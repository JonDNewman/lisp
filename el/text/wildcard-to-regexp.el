;;; wildcard-to-regexp.el --- with bash-style {a,b,...} expansion

;; Modified by: Francis J. Wright <F.J.Wright@qmw.ac.uk>
;; Time-stamp: <30 July 2001>

;;; Commentary:

;; This version of `wildcard-to-regexp' adds optional bash-style
;; {a,b,...} expansion.  In particular, this gives users of ls-lisp
;; (the default in non-UNIX ports of Emacs) the functionality of
;; running ls under bash.  (The only other standard Emacs 21 package
;; that calls `wildcard-to-regexp' is vhdl-mode.)  It also supports
;; escaping by \ better, but quoting is not supported.

;; The function `wildcard-to-regexp' (defined in files.el) is
;; preloaded, so just byte-compile this package somewhere in your
;; `load-path' and (require 'wildcard-to-regexp) in order to redefine
;; `wildcard-to-regexp'.

;; Test examples:

;; These examples are all expanded:

;; (wildcard-to-regexp "*.{c,h,cpp}") -> "\\`[^ ]*\\.\\(c\\|h\\|cpp\\)\\'"
;; (wildcard-to-regexp "*.{txt,texi}") -> "\\`[^ ]*\\.\\(txt\\|texi\\)\\'"
;; (wildcard-to-regexp "*.{txt,}") -> "\\`[^ ]*\\.\\(txt\\|\\)\\'"
;; (wildcard-to-regexp "*.{,txt}") -> "\\`[^ ]*\\.\\(\\|txt\\)\\'"

;; but these are not:

;; (wildcard-to-regexp "*.{txt}") -> "\\`[^ ]*\\.{txt}\\'"
;; (wildcard-to-regexp "*.{txt\\,texi}") -> "\\`[^ ]*\\.{txt\\,texi}\\'"
;; (wildcard-to-regexp "*.\\{txt,texi}") -> "\\`[^ ]*\\.\\{txt,texi}\\'"

;; From bash manual:

;; (wildcard-to-regexp "/usr/local/src/bash/{old,new,dist,bugs}") ->
;; "\\`/usr/local/src/bash/\\(old\\|new\\|dist\\|bugs\\)\\'"

;; (wildcard-to-regexp "/usr/{ucb/{ex,edit},lib/{ex?.?*,how_ex}}") ->
;; "\\`/usr/\\(ucb/\\(ex\\|edit\\)\\|lib/\\(ex[^ ]\\.[^ ][^ ]*\\|how_ex\\)\\)\\'"

;;; History:

;; Based on Emacs 21 `wildcard-to-regexp' defined in `files.el'.

;;; Code:

(if (>= emacs-major-version 21)

    ;; For Emacs 21 (or my version of ls-lisp):
    (defcustom wildcard-to-regexp-expand-\{\} t
      "*Non-nil causes `wildcard-to-regexp' to expand {a,b,...} like bash.
This affects ls-lisp (which `dired' may use, see `insert-directory')
and `vhdl-mode'."
      :type 'boolean
      :group 'ls-lisp
      :group 'vhdl-mode
      :version "21.2")

  ;; Using standard Emacs 20:
  (defvar wildcard-to-regexp-expand-\{\} t
    "*Non-nil causes `wildcard-to-regexp' to expand {a,b,...} like bash.
This affects ls-lisp (which `dired' may use, see `insert-directory')
and `vhdl-mode'.")
  )

(defun wildcard-to-regexp (wildcard)
  "Given a shell file name pattern WILDCARD, return an equivalent regexp.
The generated regexp will match a filename iff the filename
matches that wildcard according to shell rules.
If `wildcard-to-regexp-expand-\{\}' is non-nil then expand `{a,b,...}'
like bash, allowing arbitrarily nesting.  To use `{', `,' and `}' for
any other purpose they must be escaped by a preceding `\\'."
  ;; Shell wildcards should match the entire filename,
  ;; not its part.  Make the regexp say so.
  (concat "\\`" (wildcard-to-regexp-1 wildcard) "\\'"))

(defvar i)			       ; bound in wildcard-to-regexp-1

(defun wildcard-to-regexp-1 (wildcard)
  "As `wildcard-to-regexp' (WILDCARD) but without the \\`...\\'.
Called recursively by `wildcard-to-regexp-\{\}'."
  (let* ((i (string-match "[[.*+\\^$?{]" wildcard))
	 ;; Copy the initial run of non-special characters.
	 (result (substring wildcard 0 i))
	 (len (length wildcard)))
    ;; If no special characters, we're almost done.
    (if i
	(while (< i len)
	  (let ((ch (aref wildcard i))
		j)
	    (setq
	     result
	     (concat result
		     (cond
		      ((and (eq ch ?\[)
			    (< (1+ i) len)
			    (eq (aref wildcard (1+ i)) ?\]))
		       "\\[")
		      ((eq ch ?\[)	; [...] maps to regexp char class
		       (progn
			 (setq i (1+ i))
			 (concat
			  (cond
			   ((eq (aref wildcard i) ?!) ; [!...] -> [^...]
			    (progn
			      (setq i (1+ i))
			      (if (eq (aref wildcard i) ?\])
				  (progn
				    (setq i (1+ i))
				    "[^]")
				"[^")))
			   ((eq (aref wildcard i) ?^)
			    ;; Found "[^".  Insert a `\0' character
			    ;; (which cannot happen in a filename)
			    ;; into the character class, so that `^'
			    ;; is not the first character after `[',
			    ;; and thus non-special in a regexp.
			    (progn
			      (setq i (1+ i))
			      "[\000^"))
			   ((eq (aref wildcard i) ?\])
			    ;; I don't think `]' can appear in a
			    ;; character class in a wildcard, but
			    ;; let's be general here.
			    (progn
			      (setq i (1+ i))
			      "[]"))
			   (t "["))
			  (prog1	; copy everything upto next `]'.
			      (substring wildcard
					 i
					 (setq j (string-match
						  "]" wildcard i)))
			    (setq i (if j (1- j) (1- len)))))))
		      ((eq ch ?.)  "\\.")
		      ((eq ch ?*)  "[^\000]*")
		      ((eq ch ?+)  "\\+")
		      ((eq ch ?^)  "\\^")
		      ((eq ch ?$)  "\\$")
		      ;; ((eq ch ?\\) "\\\\") ; probably cannot happen...
		      ((eq ch ?\\)	; FJW
		       (setq i (1+ i))
		       (if (< i len)
			   (concat "\\" (char-to-string (aref wildcard i)))
			 "\\\\"))
		      ((eq ch ??)  "[^\000]")
		      ((and (eq ch ?\{)	; FJW: {a,b,...} -> \(a\|b\|...\)
			    wildcard-to-regexp-expand-\{\})
		       (wildcard-to-regexp-\{\} wildcard))
		      (t (char-to-string ch)))))
	    (setq i (1+ i)))))
    result))

(defun wildcard-to-regexp-\{\} (wildcard)
  "Given a bash `{a,b,...}'-pattern, return an equivalent regexp.
To be called by `wildcard-to-regexp-1' only!  The pattern begins at
index i in string WILDCARD.  The variable i is fluid-bound."
  ;; [Note that wildcard-to-regexp-find-,\ start index must allow for
  ;; a preceding character [^\], and so is i rather than (1+ i), etc.]
  ;; Find first comma:
  (let (s j ii)
    (if (not (and (setq j (wildcard-to-regexp-find-,\} wildcard i))
		  (eq (aref wildcard j) ?,)))
	"{"				; does not match {a,...}
      (setq s (concat "\\("		; Emacs 21: use shy group "\\(?:" ?
		      (wildcard-to-regexp-1
		       (substring wildcard (1+ i) j)))
	    ii j)
      ;; Find subsequent commas or closing brace:
      (while (and (setq j (wildcard-to-regexp-find-,\} wildcard ii))
		  (eq (aref wildcard j) ?,))
	(setq s (concat s "\\|"
			(wildcard-to-regexp-1
			 (substring wildcard (1+ ii) j)))
	      ii j))
      ;; Found closing brace or failed:
      (cond
       (j (setq s (concat s "\\|"
			  (wildcard-to-regexp-1
			   (substring wildcard (1+ ii) j)))
		i j)			; update i
	  (concat s "\\)"))		; return regexp
       (t "{"))				; does not match {a,...}
      )))

(defun wildcard-to-regexp-find-,\} (s i)
  "Return index of first top-level `,' or `}' after `{' in string S at index I.
Allow nested `{...}' and ignore characters escaped by a preceding `\\'."
  (setq i (string-match "[^\\][{,}]" s i))
  (while (and i (eq (aref s (1+ i)) ?\{))
    (setq i (wildcard-to-regexp-skip-\{\} s (1+ i)))
    (if i (setq i (string-match "[^\\][{,}]" s i))))
  (and i (1+ i)))

(defun wildcard-to-regexp-skip-\{\} (s i)
  "Return index of `}' matching `{' in string S at index I.
Allow nested `{...}' and ignore characters escaped by a preceding `\\'."
  (setq i (string-match "[^\\][{}]" s i))
  (while (and i (eq (aref s (1+ i)) ?\{))
    (setq i (wildcard-to-regexp-skip-\{\} s (1+ i)))
    (if i (setq i (string-match "[^\\][{}]" s i))))
  (and i (1+ i)))

(provide 'wildcard-to-regexp)

;;; wildcard-to-regexp.el ends here
