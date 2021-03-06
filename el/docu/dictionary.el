;; dictionary.el -- an interface to RFC 2229 dictionary server

;; Author: Torsten Hilbrich <Torsten.Hilbrich@gmx.net>
;; Keywords: interface, dictionary
;; $Id: dictionary.el,v 1.14 1999/01/11 21:09:47 torsten Exp $

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

(eval-when-compile
  (require 'cl))

(require 'custom)
(require 'connection)
(require 'link)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Stuff for customizing.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(eval-when-compile
  (unless (fboundp 'defface)
	  (message "Please update your custom.el file: %s"
		   "http://www.dina.kvl.dk/~abraham/custom/"))
  
  (unless (fboundp 'defgroup)
	  (defmacro defgroup (&rest ignored))
	  (defmacro defcustom (var value doc &rest ignored)
	    (list 'defvar var value doc))))

(defgroup dictionary nil
  "Client for accessing the dictd server based dictionaries"
  :group 'help
  :group 'hypermedia)

(defcustom dictionary-server
  "shock-treatment.mit.edu"
  "This server is contacted for searching the dictionary"
  :group 'dictionary
  :type 'string)

(defcustom dictionary-port
  2628
  "The port of the dictionary server.
This port is propably always 2628 so there should be no need to modify it."
  :group 'dictionary
  :type 'number)

(defcustom dictionary-identification
  "dictionary.el emacs lisp dictionary client"
  "This is the identification string that will be send to the server."
  :group 'dictionary
  :type 'number)

(defcustom dictionary-default-dictionary
  "*"
  "The dictionary which is used for searching definitions and matching.
* and ! have a special meaning, * search all dictionaries, ! search until
one dictionary yields matches."
  :group 'dictionary
  :type 'string)

(defcustom dictionary-default-strategy
  "."
  "The default strategy for listing matching words."
  :group 'dictionary
  :type 'string)

(defcustom dictionary-create-buttons
  t
  "Create some clickable buttons on top of the window if non-nil"
  :group 'dictionary
  :type 'boolean)

(defcustom dictionary-mode-hook
  nil
  "Hook run in dictionary mode buffers."
  :group 'dictionary
  :type 'hook)

(if (fboundp 'defface)
    (progn

(defface dictionary-word-entry-face
  '((((type x))
     (:italic t))
    (((type tty) (class color))
     (:foreground "green"))
    (t
     (:inverse t)))
  "The face that is used for displaying the initial word entry line."
  :group 'dictionary)

(defface dictionary-button-face
  '((t
     (:bold t)))
  "The face that is used for displaying buttons."
  :group 'dictionary)

(defface dictionary-reference-face
  '((((type x)
      (class color)
      (background dark))
     (:foreground "yellow"))
    (((type tty)
      (class color)
      (background dark))
     (:foreground "brightyellow"))
    (((class color)
      (background light))
     (:foreground "blue"))
    (t
     (:underline t)))
  
  "The face that is used for displaying a reference word."
  :group 'dictionary)

)

;; else
(copy-face 'italic 'dictionary-word-entry-face)
(copy-face 'bold 'dictionary-button-face)
(copy-face 'default 'dictionary-reference-face)
(set-face-foreground 'dictionary-reference-face "blue"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffer local variables for storing the current state
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar dictionary-window-configuration
  nil
  "The window configuration to be restored upon closing the buffer")

(defvar dictionary-position-stack
  nil
  "The history buffer for point and window position")

(defvar dictionary-data-stack
  nil
  "The history buffer for functions and arguments")

(defvar dictionary-positions
  nil
  "The current positions")

(defvar dictionary-current-data
  nil
  "The item that will be placed on stack next time")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global variables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar dictionary-mode-map
  nil
  "Keymap for dictionary mode")

(defvar dictionary-connection 
  nil
  "The current network connection")

(defvar dictionary-instances
  0
  "The number of open dictionary buffers")

(defvar dictionary-marker 
  nil
  "Stores the point position while buffer display.")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic function providing startup actions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dictionary-mode ()
  "This is a mode for searching a dictionary server implementing
the protocol defined in RFC 2229.

This is a quick reference to this mode describing the default key bindings:

* q close the dictionary buffer
* h display this help information
* s ask for a new word to search
* d search the word at point
* n or Tab place point to the next link
* p or S-Tab place point to the prev link

* m ask for a pattern and list all matching words.
* D select the default dictionary
* M select the default search strategy

* Return or Button2 visit that link
* M-Return or M-Button2 search the word beneath link in all dictionaries
"

  (unless (eq major-mode 'dictionary-mode)
    (incf dictionary-instances))
  
  (kill-all-local-variables)
  (buffer-disable-undo)
  (use-local-map dictionary-mode-map)
  (setq major-mode 'dictionary-mode)
  (setq mode-name "Dictionary")

  (make-local-variable 'dictionary-data-stack)
  (setq dictionary-data-stack nil)
  (make-local-variable 'dictionary-position-stack)
  (setq dictionary-position-stack nil)

  (make-local-variable 'dictionary-current-data)
  (make-local-variable 'dictionary-positions)

  (make-local-variable 'dictionary-default-dictionary)
  (make-local-variable 'dictionary-default-strategy)

  (make-local-hook 'kill-buffer-hook)
  (add-hook 'kill-buffer-hook 'dictionary-close t t)
  (run-hooks 'dictionary-mode-hook))

(defun dictionary ()
  "Create a new dictonary buffer and install dictionary-mode"
  (interactive)

  (let ((buffer (generate-new-buffer "*Dictionary buffer*"))
	(window-configuration (current-window-configuration)))
    (switch-to-buffer-other-window buffer)
    (dictionary-mode)
    
    (make-local-variable 'dictionary-window-configuration)
    (setq dictionary-window-configuration window-configuration)
    (dictionary-check-connection)))

(unless dictionary-mode-map
  (setq dictionary-mode-map (make-sparse-keymap))
  (suppress-keymap dictionary-mode-map)

  (define-key dictionary-mode-map "q" 'dictionary-close)
  (define-key dictionary-mode-map "h" 'dictionary-help)
  (define-key dictionary-mode-map "s" 'dictionary-search)
  (define-key dictionary-mode-map "d" 'dictionary-lookup-definition)
  (define-key dictionary-mode-map "D" 'dictionary-select-dictionary)
  (define-key dictionary-mode-map "M" 'dictionary-select-strategy)
  (define-key dictionary-mode-map "m" 'dictionary-match-words)
  (define-key dictionary-mode-map "l" 'dictionary-previous)

  (define-key dictionary-mode-map [tab] 'dictionary-next-link)
  (define-key dictionary-mode-map "n" 'dictionary-next-link)
  (define-key dictionary-mode-map [(shift tab)] 'dictionary-prev-link)
  (define-key dictionary-mode-map "p" 'dictionary-prev-link)

  (define-key dictionary-mode-map " " 'scroll-up)
  (define-key dictionary-mode-map [(meta space)] 'scroll-down)

  (link-initialize-keymap dictionary-mode-map))
  
(defun dictionary-check-connection ()
  "Check if there is already a connection open"
  (if (not (and dictionary-connection
		(eq (connection-status dictionary-connection) 'up)))
      (progn
	(message "Opening connection to %s:%s" dictionary-server
		 dictionary-port)
	(connection-close dictionary-connection)
	(setq dictionary-connection
	      (connection-open dictionary-server dictionary-port))
	(dictionary-check-initial-reply)
	(dictionary-send-command (concat "client " dictionary-identification))
	(let ((reply (dictionary-read-reply-and-split)))
	  (message nil)
	  (unless (dictionary-check-reply reply 250)
	    (error "Unknown server answer: %s" (dictionary-reply reply)))))))
(defun dictionary-mode-p ()
  "Return non-nil if current buffer has dictionary-mode"
  (eq major-mode 'dictionary-mode))

(defun dictionary-ensure-buffer ()
  "If current buffer is not a dictionary buffer, create a new one."
  (unless (dictionary-mode-p)
    (dictionary)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Dealing with closing the buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dictionary-close ()
  "Close the current dictionary buffer and its connection"
  (interactive)
  (if (eq major-mode 'dictionary-mode)
      (progn
	(setq major-mode nil)
	(if (<= (decf dictionary-instances) 0)
	    (connection-close dictionary-connection))
	(let ((configuration dictionary-window-configuration))
	  (kill-buffer (current-buffer))
	  (set-window-configuration configuration)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helpful functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dictionary-send-command (string)
  "Send the command `string' to the network connection."
  (dictionary-check-connection)
  (connection-send-crlf dictionary-connection string))

(defun dictionary-read-reply ()
  "Read the reply line from the server"
  (let ((answer (connection-read-crlf dictionary-connection)))
    (if (string-match "\r" answer)
	(substring answer 0 (match-beginning 0))
      answer)))

(defun dictionary-split-string (string)
  "Split the `string' constiting of space separated words into elements.
This function knows about the special meaning of quotes (\")"
  (let ((list))
    (while (and string (> (length string) 0))
      (let ((search "\\(\\s-+\\)")
	    (start 0))
	(if (= (aref string 0) ?\")
	    (setq search "\\(\"\\)\\s-*"
		  start 1))
      (if (string-match search string start)
	  (progn
	    (setq list (cons (substring string start (- (match-end 1) 1)) list)
		  string (substring string (match-end 0))))
	(setq list (cons string list)
	      string nil))))
    (nreverse list)))

(defun dictionary-read-reply-and-split ()
  "Read the reply, split it into words and return it"
  (let ((answer (make-symbol "reply-data"))
	(reply (dictionary-read-reply)))
    (let ((reply-list (dictionary-split-string reply)))
      (put answer 'reply reply)
      (put answer 'reply-list reply-list)
      (put answer 'reply-code (string-to-number (car reply-list)))
      answer)))

(defmacro dictionary-reply-code (reply)
  "Return the reply code stored in `reply'."
  (list 'get reply ''reply-code))

(defmacro dictionary-reply (reply)
  "Return the string reply stored in `reply'."
  (list 'get reply ''reply))

(defmacro dictionary-reply-list (reply)
  "Return the reply list stored in `reply'."
  (list 'get reply ''reply-list))

(defun dictionary-read-answer ()
  "Read an answer delimited by a . on a single line"
  (let ((answer (connection-read-to-point dictionary-connection))
	(start 0))
    (while (string-match "^\\." answer start)
      (setq answer (replace-match "" t t answer))
      (setq start (match-end 0)))
    (setq start 0)
    (while (string-match "\r\n" answer start)
      (setq answer (replace-match "\n" t t answer))
      (setq start (1- (match-end 0))))
    answer))

(defun dictionary-check-reply (reply code)
  "Check if the reply in `reply' has the `code'."
  (let ((number (dictionary-reply-code reply)))
    (and (numberp number)
	 (= number code))))
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Communication functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dictionary-check-initial-reply ()
  "Read the first reply from server and check it."
  (let ((reply (dictionary-read-reply-and-split)))
    (unless (dictionary-check-reply reply 220)
      (connection-close dictionary-connection)
      (error "Server returned: %s" (dictionary-reply reply)))))

;; Store the current state
(defun dictionary-store-state (function data)
  "Stores the current state of operation for later restore."
  
  (if dictionary-current-data
      (progn
	(push dictionary-current-data dictionary-data-stack)
	(unless dictionary-positions
	  (error "dictionary-store-state called before dictionary-store-positions"))
	(push dictionary-positions dictionary-position-stack)))
  (setq dictionary-current-data
	(cons function data)))

(defun dictionary-store-positions ()
  "Stores the current positions for later restore."
  
  (setq dictionary-positions (cons (point) (window-start))))
  
;; Restore the previous state
(defun dictionary-restore-state (&rest ignored)
  "Restore the state just before the last operation"
  (let ((position (pop dictionary-position-stack))
	(data (pop dictionary-data-stack)))
    (unless position
      (error "Already at begin of history"))
    (apply (car data) (cdr data))
    (set-window-start (selected-window) (cdr position))
    (goto-char (car position))
    (setq dictionary-current-data data)))
      

;; The normal search

(defun dictionary-new-search (args &optional all)
  "Save the current state and start a new search"
  (dictionary-store-positions)
  (dictionary-ensure-buffer)
  (let ((word (car args))
	(dictionary (cdr args)))

    (if all
	(setq dictionary dictionary-default-dictionary))
    (dictionary-do-search word dictionary)
    (dictionary-store-state 'dictionary-do-search (list word dictionary))))

(defun dictionary-do-search (word dictionary)
  "The workhorse for doing the search"

  (message "Searching for %s in %s" word dictionary)
  (dictionary-send-command (concat "define \"" dictionary "\" \""
				   word "\""))
  (message nil)
  (let ((reply (dictionary-read-reply-and-split)))
    (if (dictionary-check-reply reply 552)
	(error "Word \"%s\" in dictionary \"%s\" not found"
	       word dictionary)
      (if (dictionary-check-reply reply 550)
	  (error "Dictionary \"%s\" is unknown, please select an existing one."
		 dictionary)
	(unless (dictionary-check-reply reply 150)
	  (error "Unknown server answer: %s" (dictionary-reply reply)))
	(dictionary-display-search-result reply)))))

(defun dictionary-pre-buffer ()
  "These commands are executed at the begin of a new buffer"
  (toggle-read-only 0)
  (erase-buffer)
  (if dictionary-create-buttons
      (progn
	(link-insert-link "[Back]" 'dictionary-button-face 
			  'dictionary-restore-state nil
			  "Mouse-2 to go backwards in history")
	(insert " ")
	(link-insert-link "[Search Definition]" 
			  'dictionary-button-face 
			  'dictionary-search nil
			  "Mouse-2 to look up a new word")

	(insert "         ")
	(link-insert-link "[Matching words]"
			  'dictionary-button-face
			  'dictionary-match-words nil
			  "Mouse-2 to find matches for a pattern")
	(insert "\n       ")
	(link-insert-link "[Select Default Dictionary]"
			  'dictionary-button-face
			  'dictionary-select-dictionary nil
			  "Mouse-2 to select dictionary for future searches")
	(insert " ")
	(link-insert-link "[Select Match Strategy]"
			  'dictionary-button-face
			  'dictionary-select-strategy nil
			  "Mouse-2 to select matching algorithm")
	(insert "\n\n")))
  (setq dictionary-marker (point-marker)))

(defun dictionary-post-buffer ()
  "These commands are executed at the end of a new buffer"
  (goto-char dictionary-marker)
  (set-buffer-modified-p nil)
  (toggle-read-only 1))

(defun dictionary-display-search-result (reply)
  "This function starts displaying the result starting with the `reply'."
  
  (let ((number (nth 1 (dictionary-reply-list reply))))
    (dictionary-pre-buffer)
    (insert number (if (equal number "1")
		       " definition"
		     " definitions")
	    " found\n\n")
    (setq reply (dictionary-read-reply-and-split))
    (while (dictionary-check-reply reply 151)
      (let* ((reply-list (dictionary-reply-list reply))
	     (dictionary (nth 2 reply-list))
	     (description (nth 3 reply-list))
	     (word (nth 1 reply-list)))
	(dictionary-display-word-entry word dictionary description)
	(setq reply (dictionary-read-answer))
	(dictionary-display-word-definition reply word dictionary)
	(setq reply (dictionary-read-reply-and-split))))
    (dictionary-post-buffer)))

(defun dictionary-display-word-entry (word dictionary description)
  "Insert an explanation for the current definition."
  (let ((start (point)))
    (insert "From " description "[" dictionary "]:\n\n")
    (put-text-property start (point) 'face 'dictionary-word-entry-face)))

(defun dictionary-display-word-definition (reply word dictionary)
  "Insert the definition for the current word"
  (let ((start (point)))
    (insert reply)
    (let ((regexp "\\({+\\)\\([^}]+\\)\\(}+\\)"))
      (goto-char start)
      (while (< (point) (point-max))
	(if (search-forward-regexp regexp nil t)
	    (progn
	      (replace-match "\\2")
	      ;; Compensate for the replacement
	      (let* ((brace-match-length (- (match-end 1)
					    (match-beginning 1)))
		     (match-start (- (match-beginning 2)
				     brace-match-length))
		     (match-end (- (match-end 2)
				   brace-match-length)))
		(dictionary-mark-reference match-start match-end
					   'dictionary-new-search
					   word dictionary)))
	  (goto-char (point-max)))))))

(defun dictionary-mark-reference (start end call displayed-word dictionary)
  "Format the area from `start' to `end' as link calling `call'.
The word is taken from the buffer, the `dictionary' is given as argument."
  (let ((word (buffer-substring-no-properties start end)))
    (while (string-match "\n\\s-*" word)
      (setq word (replace-match " " t t word)))
    (while (string-match "[*\"]" word)
      (setq word (replace-match "" t t word)))
    
    (unless (equal word displayed-word)
      (link-create-link start end 'dictionary-reference-face
			call (cons word dictionary)
			(concat "Press Mouse-2 to lookup \"" 
				word "\" in \"" dictionary "\"")))))

(defun dictionary-select-dictionary (&rest ignored)
  "Save the current state and start a dictionary selection"
  (interactive)
  (dictionary-ensure-buffer)
  (dictionary-store-positions)
  (dictionary-do-select-dictionary)
  (dictionary-store-state 'dictionary-do-select-dictionary nil))

(defun dictionary-do-select-dictionary (&rest ignored)
  "The workhorse for doing the dictionary selection."

  (message "Looking up databases and descriptions")
  (dictionary-send-command "show db")

  (let ((reply (dictionary-read-reply-and-split)))
    (message nil)
    (if (dictionary-check-reply reply 554)
	(error "No dictionary present")
      (unless (dictionary-check-reply reply 110)
	(error "Unknown server answer: %s"
	       (dictionary-reply reply)))
      (dictionary-display-dictionarys reply))))

(defun dictionary-simple-split-string (string &optional pattern)
  "Return a list of substrings of STRING which are separated by PATTERN.
If PATTERN is omitted, it defaults to \"[ \\f\\t\\n\\r\\v]+\"."
  (or pattern
      (setq pattern "[ \f\t\n\r\v]+"))
  ;; The FSF version of this function takes care not to cons in case
  ;; of infloop.  Maybe we should synch?
  (let (parts (start 0))
    (while (string-match pattern string start)
      (setq parts (cons (substring string start (match-beginning 0)) parts)
	    start (match-end 0)))
    (nreverse (cons (substring string start) parts))))

(defun dictionary-display-dictionarys (reply)
  "Handle the display of all dictionaries existing on the server"
  (dictionary-pre-buffer)
  (insert "Please select your default dictionary:\n\n")
  (dictionary-display-dictionary-line "* \"All dictionaries\"")
  (dictionary-display-dictionary-line "! \"The first matching dictionary\"")
  (let* ((reply (dictionary-read-answer))
	 (list (dictionary-simple-split-string reply "\n+")))
    (mapcar 'dictionary-display-dictionary-line list))
  (dictionary-post-buffer))

(defun dictionary-display-dictionary-line (string)
  "Display a single dictionary"
  (let* ((list (dictionary-split-string string))
	 (dictionary (car list))
	 (description (cadr list)))
    (if dictionary
	(progn
	  (link-insert-link description 'dictionary-reference-face
			    'dictionary-set-dictionary 
			    (cons dictionary description)
			    "Mouse-2 to select this dictionary")
	  (insert "\n")))))
    
(defun dictionary-set-dictionary (param &optional more)
  "Select this dictionary as new default"

  (if more
      (dictionary-display-more-info param)
    (let ((dictionary (car param)))
      (setq dictionary-default-dictionary dictionary)
      (message "Dictionary %s has been selected" dictionary))))
    
(defun dictionary-display-more-info (param)
  "Display the available information on the dictionary"
  
  (let ((dictionary (car param))
	(description (cdr param)))
    (unless (or (equal dictionary "*")
		(equal dictionary "!"))
      (dictionary-store-positions)
      (message "Requesting more information on %s" dictionary)
      (dictionary-send-command (concat "show info \"" dictionary "\""))
      (let ((reply (dictionary-read-reply-and-split)))
	(message nil)
	(if (dictionary-check-reply reply 550)
	    (error "Dictionary \"%s\" not existing" dictionary)
	  (unless (dictionary-check-reply reply 112)
	    (error "Unknown server answer: %s" (dictionary-reply reply)))
	  (dictionary-pre-buffer)
	  (insert "Information on dictionary: ")
	  (link-insert-link description 'dictionary-reference-face
			    'dictionary-set-dictionary 
			    (cons dictionary description)
			    "Mouse-2 to select this dictionary")
	  (insert "\n\n")
	  (setq reply (dictionary-read-answer))
	  (insert reply)
	  (dictionary-post-buffer)))
      
      (dictionary-store-state 'dictionary-display-more-info dictionary))))

(defun dictionary-select-strategy (&rest ignored)
  "Save the current state and start a strategy selection"
  (interactive)
  (dictionary-ensure-buffer)
  (dictionary-store-positions)
  (dictionary-do-select-strategy)
  (dictionary-store-state 'dictionary-do-select-strategy nil))

(defun dictionary-do-select-strategy ()
  "The workhorse for doing the strategy selection."

  (message "Request existing matching algorithm")
  (dictionary-send-command "show strat")

  (let ((reply (dictionary-read-reply-and-split)))
    (message nil)
    (if (dictionary-check-reply reply 555)
	(error "No strategies available")
      (unless (dictionary-check-reply reply 111)
	(error "Unknown server answer: %s"
	       (dictionary-reply reply)))
      (dictionary-display-strategies reply))))

(defun dictionary-display-strategies (reply)
  "Handle the display of all strategies existing on the server"
  (dictionary-pre-buffer)
  (insert "Please select your default search strategy:\n\n")
  (dictionary-display-strategy-line ". \"The servers default\"")
  (let* ((reply (dictionary-read-answer))
	 (list (dictionary-simple-split-string reply "\n+")))
    (mapcar 'dictionary-display-strategy-line list))
  (dictionary-post-buffer))

(defun dictionary-display-strategy-line (string)
  "Display a single strategy"
  (let* ((list (dictionary-split-string string))
	 (strategy (car list))
	 (description (cadr list)))
    (if strategy
	(progn
	  (link-insert-link description 'dictionary-reference-face
			    'dictionary-set-strategy strategy
			    "Mouse-2 to select this matching algorithm")
	  (insert "\n")))))
    
(defun dictionary-set-strategy (strategy &rest ignored)
  "Select this strategy as new default"
  (setq dictionary-default-strategy strategy)
  (message "Strategy %s has been selected" strategy))
    
(defun dictionary-new-matching (word)
  "Run a new matching search on `word'."
  (dictionary-ensure-buffer)
  (dictionary-store-positions)
  (dictionary-do-matching word dictionary-default-dictionary
			  dictionary-default-strategy)
  (dictionary-store-state 'dictionary-do-matching 
			  (list word dictionary-default-dictionary
				dictionary-default-strategy)))

(defun dictionary-do-matching (word dictionary strategy)
  "Ask the server about matches to `word' and display it."
  
  (message "Lookup matching words for %s in %s using %s"
	   word dictionary strategy)
  (dictionary-send-command 
   (concat "match \"" dictionary "\" \""
	   strategy "\" \"" word "\""))
  (let ((reply (dictionary-read-reply-and-split)))
    (message nil)
    (if (dictionary-check-reply reply 550)
	(error "Dictionary \"%s\" is invalid" dictionary))
    (if (dictionary-check-reply reply 551)
	(error "Strategy \"%s\" is invalid" strategy))
    (if (dictionary-check-reply reply 552)
	(error (concat
		"No match for \"%s\" with strategy \"%s\" in "
		"dictionary \"%s\".")
	       word strategy dictionary))
    (unless (dictionary-check-reply reply 152)
      (error "Unknown server answer: %s" (dictionary-reply reply)))
    (dictionary-display-match-result reply)))

(defun dictionary-display-match-result (reply)
  "Display the results from the current matches."
  (dictionary-pre-buffer)

  (let ((number (nth 1 (dictionary-reply-list reply)))
	(list (dictionary-simple-split-string (dictionary-read-answer) "\n+")))
    (insert number " matching word" (if (equal number "1") "" "s")
	    " found\n\n")
    (let ((result nil))
      (mapcar (lambda (item)
		(let* ((list (dictionary-split-string item))
		       (dictionary (car list))
		       (word (cadr list))
		       (hash (assoc dictionary result)))
		  (if dictionary
		      (if hash
			  (setcdr hash (cons word (cdr hash)))
		    (setq result (cons 
				  (cons dictionary (list word)) 
				  result))))))
	      list)
      (dictionary-display-match-lines (reverse result))))
  (dictionary-post-buffer))

(defun dictionary-display-match-lines (list)
  "Display the match lines."
  (mapcar (lambda (item)
	    (let ((dictionary (car item))
		  (word-list (cdr item)))
	      (insert "Matches from " dictionary ":\n")
	      (mapcar (lambda (word)
			(insert "  ")
			(link-insert-link word 'dictionary-reference-face
					  'dictionary-new-search
					  (cons word dictionary)
					  "Mouse-2 to lookup word")
			(insert "\n")) (reverse word-list))
	      (insert "\n")))
	    list))
	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User callable commands
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dictionary-search (word &optional dictionary)
  "Search the `word' in `dictionary' if given or in all if nil.  
It presents the word at point as default input and allows editing it."
  (interactive
   (list (read-string "Search word: " (current-word))
	 (if current-prefix-arg
	     (read-string "Dictionary: " dictionary-default-dictionary)
	   dictionary-default-dictionary)))

  ;; if called by pressing the button
  (unless word
    (setq word (read-string "Search word: ")))
  ;; just in case non-interactivly called
  (unless dictionary
    (setq dictionary dictionary-default-dictionary))
  (dictionary-new-search (cons word dictionary)))

(defun dictionary-lookup-definition ()
  "Unconditionally lookup the word at point."
  (interactive)
  (dictionary-new-search (cons (current-word) dictionary-default-dictionary)))

(defun dictionary-previous ()
  "Go to the previous location in the current buffer"
  (interactive)
  (unless (dictionary-mode-p)
    (error "Current buffer is no dictionary buffer"))
  (dictionary-restore-state))

(defun dictionary-next-link ()
  "Place the cursor to the next link."
  (interactive)
  (let ((pos (link-next-link)))
    (if pos
	(goto-char pos)
      (error "There is no next link"))))

(defun dictionary-prev-link ()
  "Place the cursor to the previous link."
  (interactive)
  (let ((pos (link-prev-link)))
    (if pos
	(goto-char pos)
      (error "There is no previous link"))))

(defun dictionary-help ()
  "Display a little help"
  (interactive)
  (describe-function 'dictionary-mode))

(defun dictionary-match-words (&optional pattern &rest ignored)
  "Search `pattern' in current default dictionary using default strategy."
  (interactive)
  ;; can't use interactive because of mouse events
  (or pattern
      (setq pattern (read-string "Search pattern: ")))
  (dictionary-new-matching pattern))

(provide 'dictionary)
