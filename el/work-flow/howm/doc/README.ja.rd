=begin

= howm (��ͤ���� Wiki ��ɤ�)
$Id: README.ja.rd,v 1.247.2.1 2006/12/16 11:05:44 hira Exp $

Emacs ������Ū�ʥ���ɤ�ɤ�Ȥ뤿��δĶ��Ǥ�.
ʬ�ൡǽ�Ϥ����ƤĤ��ޤ���.
������, ��ʸ�����ȥ��֥�󥯤���ڤˤǤ���褦�ˤ��ޤ���.
��ͳ�񼰤ʤΤǲ��������� :-)

== �ܼ�

* ((<�Ȥ���>)) ��
  ((<����񤳤�>))��((<�����ɤ⤦>))��((<��ޥ����>))
* ((<Ƴ��ˡ>)) ��
  ((<���󥹥ȡ���>))��((<�������ޥ���>))��((<�����ġ���>))
* ((<����>)) ��
  ((<�����ˤĤ���>))��((<ư���ޤ����?>))��((<todo>))��((<�Х�������>))
* ((<����>)) ��
  ((<����>))��((<������Ͽ>))��((<���ɥ쥹>))

== �Ȥ���

* �����������ꤹ���Ʋ��������
  �� ���((<���塼�ȥꥢ��|URL:TUTORIAL.ja.rd>))��ɤ���
* ��ͳ�٤��ꤹ���Ƥɤ��Ȥ��Ф������
  �� ((<����ʤդ��˻Ȥ��ޤ�|URL:index-j.html#hint>))

=== ����񤳤�
(howm-mode)

* ���
  * C-c , , (M-x howm-menu) �ǥ�˥塼��Ф�,
    [����] �˥��������֤��ƥ꥿���� �� �ֺ����Υ��פ򳫤�
    * �ޤ���, ľ�� C-c , c (M-x howm-create)
  * ����ʥƥ�ץ졼�Ȥ�ɽ�������
      = �� ��(�����ȥ���)
      [2002-09-16 20:08] >>> /home/hira/elisp/howm/howm-mode.el
      ��(������ & �������˸��Ƥ��ե�����)
    * ���Ƥ��ե����뤬���פʤ�, undo (C-x u ���� C-_ ����) �Ǿä�
    * �ƥ�ץ졼�ȼ��Τ����פʤ�, ³���Ƥ⤦���� undo
  * �����ʤ��Ȥ򹥤��ʤ褦�˽�
  * �������.

* �����ȥ��� (1 �ե�����ʣ�����)
  * ���Τ褦�˽񤯤�, foo �� bar �������ȥ�
      = foo
      (�� �ۤ��ۤ� ��)
      = bar
      (�� �դ��դ� ��)
    * Ϣ��ɽ���Ǥ�, (�� �ۤ��ۤ� ��) �� (�� �դ��դ� ��) ���ҤȤ����ޤ�
  * ���Τʽ񼰤�,
      (��Ƭ)=(����)(�����ȥ�)(����)
    * �񼰤��ѹ��� (��((<�������ޥ���>)))
  * �����ȥ�ʤ���, ñ�˥��ζ��ڤ�Ȥ��ƻȤ������Ǥ� OK
      (�� �ۤ��ۤ� ��)
      = 
      (�� �դ��դ� ��)
      = 
      (�� �ؤ��ؤ� ��)

* ���Τ褦�˽񤯤ȥ��
  * goto ���: �ե�����(�ǥ��쥯�ȥ�)̾ or �ޤޤ��ʸ����
      >>> ~/.emacs
      >>> /usr/src
      >>> �ۤ��ۤ�
    * ��ʸ��ˡ֤ۤ��ۤ��פȤ���ʸ�����ޤ���ؤΥ��
  * come-from ���: ¾�Υ��ǡ֤դ��դ��פȤ���ʸ���󤬽ФƤ�����,
    ����֤��Υ��ؤΥ�󥯤�
      <<< �դ��դ�
    * ����
      ((<"Jargon: COME-FROM"|URL:http://catb.org/~esr/jargon/html/C/COME-FROM.html>))
  * Wiki �����: goto ��Ʊ��. ��������<<< �ؤ��ؤ��פ��⤷�ʤ���к��.
      [[�ؤ��ؤ�]]

* ��󥯤ˤϲ������������. �����˥���������äƤäƥ꥿���󥭡�!
  * �����ե�����ΰ�����ɽ������� (��((<�����ɤ⤦>)))
    * ���Ȥ���, ��>>> emacs�פʤ餳��ʰ���
        <<< emacs             �� ���Ф�� come-from ����򤷤����
        <<< emacs lisp        �� ��emacs�פ�ޤ� come-from ������������
        <<< ���� emacs lisp
        grep, ruby, emacs �� regexp �ΰ㤤 �� ��ʸ��ˡ�emacs�פ�ޤ���
        emacs �Ѹ����ġ���?[2001-08-13]       (��������)
        ��
    * �ɤߤ������˥������뤢�碌�ƥ꥿���󥭡�!
      �� ���Υ��򳫤�
  * ΢��
    * come-from ��󥯤� <<< ��ǥ꥿���� �� �ִ�Ϣ������ɡפؤΥ��
      * ��
        * �ּ���ס�lisp�פ� come-from ������ɤΤȤ�
        * ��<<< ����� lisp�פξ�ǥ꥿����
          �� �ּ���ס�lisp�פ�ޤ७����ɤ��ҥå�
    * �����ˡ�<<< foo <<< bar <<< baz�פȽ񤱤�, ��alias��
      * foo, bar, baz �Τɤ�ǥ꥿�����á���Ƥ�
        ��foo �ޤ��� bar �ޤ��� baz�פθ����ˤʤ�ޤ�
      * Tips: �ߤ��ˤ����ꤿ������ alias �Ǻ�����ΤϷ�, �Ȥ������ˤϡ�
        * �ɤ����ˡ�<<< foo��
        * �̤Τɤ����ˡ�foo <<< bar��
        * ���������, foo��bar �ɤ���Ǹ������Ƥ��foo <<< bar�פ���̤�

* ��󥯤ο���
  * �¤�ñ��, ��grep �դ��դ��פΥ��硼�ȥ��åȤ��ä���
  * come-from ��󥯤θ���
    * ���Υ�����ɤ��ФƤ�����, ��ưŪ�˥��(= ����)�ˤ��Ƥ���
    * ���Υ�����ɤ򸡺������Ȥ���, ��Ƭ��ɽ�����Ƥ���
  * come-from ��󥯤ϡ�
    * �ʤ��Ƥ�褷
    * 1 �ĤΥ����� 2 �� 3 �ĤȤ��äƤ�褷
    * �̤Υ���Ʊ��������ɤ����֤äƤ�褷
    * �����ȥ�ȷ�ͤ�ʤ�,
        = <<< �դ��դ�
  * come-from, goto �Ȥ�, ��ʸ����ʸ������� (��((<�������ޥ���>)))
  * �񼰤��ѹ��� (��((<�������ޥ���>)))
  * �ʲ�, come-from ��󥯤Υ�����ɤ�ñ�ˡ֥�����ɡפ�ɽ��

* action-lock
  * ��ʸ�ξ�ǥ꥿���󥭡�����������ˡȯư
  * { } �Ƚ񤯤ȡ֥ȥ��륹���å���.
    ����������Ӥ� { } �� {*} �� {-} �� { } �� ��
  * {_} �Ƚ񤯤ȡ�̤������.
    �������� {_} �� [2002-09-13 02:31]
  * http://�� �� �֥饦����ư
    * browse-url �����. ɬ�פʤ�Ŭ��������.
        (setq browse-url-browser-function 'browse-url-mozilla)
  * file://�� �� �ե�����򳫤�
    * C-u RET �ʤ����ʬ�䤷�Ƴ���
  * [2002-10-18] �Τ褦�����շ����ǥ꥿���� �� minibuffer �ǡ�
    * ���Τޤޥ꥿���� �� �������դ򸡺� (goto link)
    * ��+17�� �� 17 ��������դ˽񤭤���
    * ��20030921�� �� [2003-09-21] �˽񤭤���
      * ǯ���Ͼ�ά��ǽ
        * ��6�� �� [2002-10-06]
        * ��803�� �� [2002-08-03]
        * ��31103�� �� [2003-11-03]
    * ��~20031030�� �� ���ιԤ�ʣ���� [2003-10-30] ʬ�ޤ�����
      * ǯ���Ͼ�ά��ǽ (���Ʊ��)
      * ��Every?�פ��Ф���
        * ���Τޤޥ꥿���� �� ����
        * 3 �� 3������
        * w �� �轵
        * m �� ���
        * y �� ��ǯ
    * ��.�� �� ���������դ˽񤭤���
    * ���ʤߤ�, ��˥塼�� [����] �����շ��������ϤǤ��ޤ�
  * ��󥯤⤳�μ�ʸ�ΰ��
    * ¾�ˤ��⤷���������ǥ����ä��鶵���Ƥ�������

* ���ޥ�� (���� howm-mode �ʳ��Ǥ���ͭ��)
  * C-c , , �� ��˥塼�򳫤� ��
  * ��˥塼 
    * ����
      * [space] �� [backspace] �� ����������
      * TAB (M-TAB) �� ��(��)�ι��ܤ�
      * [����] �� > �ξ�ǥ꥿���� �� �¹� (������)
      * ? �� �إ��
      * q �� æ��
    * �ܥ��� [����] (���ޥ��)
      * ����
        * [����] (C-c , c) �� ���������� (���꡼����󤬥����ȥ�) ��
        * [ʣ��] (C-c , D) �� ������ʣ�� (����Ͽ�ƥ�ץ졼�Ȥʤɤ����Ӥ�����)
      * ����
        * [����] (C-c , a) �� �����ΰ��� ��
        * [�Ƕ�] (C-c , l) �� �Ƕ�Υ���Ϣ��ɽ�� ��
          * (C-u 20 C-c , l) �� �Ƕ� 20 ��ʬ�ΰ���
        * [����] (C-c , A) �� ����Υ�� (���Ƥ������濴�����������ս����)
          * �оݥե������(�Խ��⡼�ɤ�)���������֤����˥塼��Ƥ֤���
        * [����] (C-c , h) �� �������� ��
        * [ͽ��] (C-c , y) �� ͽ��ɽ: ((<��ޥ����>))���� ��
        * [todo] (C-c , t) �� todo ����: ((<��ޥ����>))���� ��
      * ����
        * [����] (C-c , g) �� ����ɽ���θ��� ��
          * ����Ū�ˤ���ʸ����ʸ���ζ��̤ʤ�
            * ��Wiki�פΤ褦������Ū����ʸ������ꤷ���Ȥ��϶���
        * [����] (C-c , s) �� ������ɤ��䴰���Ϥ��Ƹ���ʸ����θ��� ��
          * C-u C-c , g �� C-u C-c , m �Ǥ�
        * [roma] (C-c , m) �� �����޻����� (migemo) ��
        * [����] (C-c , .) �� �����Υ�� ��
          * (C-u 20 C-c , .) �� 20 �����Υ��
        * [����] (C-c , :) �� �����Υ�� ��
          * (C-u 20 C-c , :) �� 20 �����Υ��
      * �Խ�: �оݥե������(�Խ��⡼�ɤ�)���������֤����˥塼��Ƥ֤���
        * [����] (C-c , r) �� ����������ʤ���
        * [����] (C-c , i) �� ������ɤ��䴰���Ϥ���Ž��Ĥ� ��
          * Tips: M-v �Ǹ�������˰ܤä� migemo ��������ȳ�
        * [����] (C-c , d) �� ���������� [yyyy-mm-dd] ��Ž��Ĥ� ��
        * [����] (C-c , T) �� ���������� [yyyy-mm-dd HH:MM] ��Ž��Ĥ� ��
        * [�ꢬ] (C-c , K) �� �����Υ����ȥ�� kill ring �� (C-y ��Ž��Ĥ�) ��
          * �����ȥ뤬�ߤĤ���ʤ��ä��Ȥ��ϥե�����̾
        * [̾��] (C-u C-c , K) �� �ե�����̾�� kill ring �� ��
      * ����
        * [menu ����] (R) �� ��˥塼��ͽ��ɽ�ʤɤ򹹿�
        * [menu �Խ�] �� ��˥塼���Խ�
        * [����] (C-c , Q) �� howm-mode �ʥХåե��򤹤٤ƾä� (̤��¸�Ͻ���) ��
        * [����] (C-c , w) �� ������˥�󥯤򤿤ɤäƼ�ư����. C-g �����. ��
  * ����¾
    * [return] �� ��󥯾�ʤ鳺���ե�����򳫤�. ����ʤ��в���.
    * ��ư
      * C-c , n �� ���Υ�󥯤�
      * C-c , p �� ���Υ�󥯤�
      * ��ե�����ʣ�����ΤȤ���
        * C-c , N �� ���Υ���
        * C-c , P �� ���Υ���
        * C-c , H �� �ǽ�Υ���
        * C-c , L �� �Ǹ�Υ���
    * �������
      * C-c , C �� ���޳����Ƥ�ե�������ɲ�
        * ��˥塼�� [�ɲ�] �Ƚ񤯤�, ����ư��Υܥ���.
          �Ѹ��˥塼�ʤ� [Add].
      * C-c , I �� �ե�����̾���ư�� (��侩)
        * C-u C-c , I �ʤ�, �����ȥǥ��쥯�ȥ��
    * narrow (1 �ե�����ʣ�����ΤȤ�)
      * M-x howm-narrow-to-memo �� ����Υ��򱣤�. �᤹�ˤ� M-x widen
      * M-x howm-toggle-narrow �� �ֱ����סָ�����פ�ȥ���
    * C-c , SPC �� howm �ʥХåե��� howm �Ǥʤ��Хåե��Ȥ��ڤ��ؤ� ��
    * M-x howm-show-buffer-as-howm �� ���Хåե��Υ��ԡ��� howm-mode ��ɽ�� ��
      * ���������ʤΤ��ͻҸ�[2003-09-29]

=== �����ɤ⤦
(�����⡼��)

* ���ޥ��(�Ʒ�)
  * C-c , , (M-x howm-menu) �� ��˥塼
  * C-c , a (M-x howm-list-all) �� ��������
  * C-c , g (M-x howm-list-grep) �� ����⸡�� (����ɽ��)
  * C-c , s (M-x howm-list-grep-fixed) �� ����⸡�� (���ꥭ�����)

* �������󥯥����פ򤹤��, �����⡼��
  * �ǥե���Ȥϰ���ɽ��
    * �����Хåե� + ���ƥХåե�
    * ����������֤Υ������Ƥ�ɽ�������
  * Ϣ��ɽ����Ǥ���
    * @ ��Ϣ��ɽ��. �⤦���� @ �ǰ���ɽ�������.
    * �ҥåȤ����������Ƥ򤼤�֤Ĥʤ���ɽ��
      * ����Ū�ʥ���ɤ�ɤ�� �� �Ĥʤ����ɤ�
    * [tab] �� [alt]-[tab] �Ǽ�/���Υ���
    * Tips: ����õ���Ȥ�, �����Ǥ������٤��ܤꤳ�����,
      Ϣ��ɽ������ migemo ��������ȳ�
  * ����ɽ����
    * 0 �� Ϣ��ɽ���Υȥ��� (@ ��Ʊ��)
    * 1 �� ���ƥХåե���ä�
    * 2 �� ���ƥХåե���Ф�
    * v �� ���ƥХåե���ȥ���
    * TAB, M-TAB �� �������Υե������
    * T �� �����ȥ�ɽ����ȥ���
  * �ɤ����ɽ���Ǥ�
    * n �� p �� �岼
    * [space] �� [backspace] �� ����������
    * j �� k �� ��ԥ���������
    * [return] �� ����������֤Υ��򳫤�
      * C-u ���� [return] �� ���򳫤��ư�����ä�
    * X �� Dired-X ��ư (��̾������ʤɤΥե��������)
      * Dired-X �λȤ�����, info dired-x ���򻲾�
          v �� ��Ȥ򸫤� (q �� ���)
          d �� �־ä����ץޡ���
          x �� �ޡ��������ե����뤿���������˾ä�
    * ? �� �إ��
    * q �� æ��

* ������
  * S �� ���ǥ����Ȥ��뤫ʹ���Ƥ��� (�䴰����)
    * name: �ե�����̾
    * name-match: ���ꤷ���ե�����̾���̤˰ܤ�
    * date: ������
    * mtime: ��������
    * summary: ���ɽ����ʸ����
    * summary-match: ���ꤷ��ʸ�������ɽ�����鸡������, ��̤˰ܤ�
    * random: �����ॷ��åե�
    * reminder: ��ޥ������
    * numerical-name: �ե�����̾ (������. �᡼��Υ����Ȥ�����)
    * reverse: ��ɽ���εս�
  * C-u S �ʤ�ǥե���Ȥεս�
  * R �� reverse

* �ʤꤳ�� (and ����)
  * f �� ���ǹʤꤳ�फʹ���Ƥ��� (�䴰����)
    * name: �ե�����̾
    * date: ������
    * mtime: ��������
    * summary: ���ɽ����ʸ����
    * contents: ����
    * reminder: ��ޥ�����������ϰ�
    * Region: �ΰ�
    * Around: ����������֤μ���
      * C-u 7 f �� Around �ʤ�, ���� 7 ��
    * uniq: Ʊ���ե�������ǲ��ս�ҥåȤ��Ƥ�, �ǽ�ΰ�ս����ɽ��
  * C-u f �ʤ�, �ޥå�������Τ������
  * G �� contents
  * u �� uniq

* howm-mode �ȶ���
  * l �� �����ΰ���
  * g �� ���� (grep)
    * C-u g �� ������ɤ��䴰���Ϥ��Ƹ���
  * m �� �����޻����� (migemo)
    * C-u m �� C-u g ��Ʊ��
  * c �� �����ե�������� (���꡼����󤬥����ȥ�)
  * Q �� howm-mode �ʥХåե��򤹤٤ƾä� (̤��¸�Ͻ���)

* ����¾
  * ����ɽ���� !  �� shell �ǥ��ޥ�ɼ¹�
    * �����ü���᤯�ΤƤ������, ����� mv �ʤ� rm �ʤꤷ�Ƥ�������
    * 2 ���ܤ���Ͼ���������ư�򤷤ޤ� :-)
  * >>> hoge.png �ʤ鳰�� viewer �ǲ����򳫤�
    * �����((<�������ޥ���>))����

=== ��ޥ����
(ͽ��ɽ��todo)

* ��ǽ
  * ������
      [2002-10-20]+ �ϥ����������� �㤪��
    �Τ褦�˽񤤤Ƥ�����, �����Ǹ��뤳�Ȥ��Ǥ��ޤ�
    * C-c , y �� ͽ��ɽ
      * . �� ������
    * C-c , t �� todo ����
      * ������ξ岼�ɤΰ��֤�ɽ������뤫��, ���դȼ��ष����
  * �ֺǶ��ͽ��פȡ�todo ��Ƭ�פϥ�˥塼�ˤ�ɽ������ޤ�
    (���Ȥ��뤴�Ȥˤ���äȸ�����Τ����פ���)
    * ��˥塼�Ǥ�, ��Ƭ�Ρ�>�׾�� RET ��á���ȥ������Ӥޤ�
      (����ʳ��ΰ��֤Ǥ�, �������ʤ���ʤ�Ʊ��)
  * �����������ե� plan �ؤ� export ���ǽ (��((<�����ġ���>)))

* ��
  * �н� (-)
      [2002-10-20]- �ϥ����������� �㤪��
    * ���������⤭������, �ʸ�Ͻ���������
    * �������ޤǤ��������
    * ����Τ��٤�����ˤ�, ͱͽ�����ǻ���(�ǥե���� 1 ��)
        [2002-10-20]-14 �ϥ����������� �㤪�� �� 14 ���֤��餤�ϵ��ˤ����褦
  * todo (+)
      [2002-10-20]+ �ϥ����������� �㤦�٤�
    * ����������, �������⤭�����äƤ���
    * �������ޤǤ��������
    * �⤭������®����, ͱͽ�����ǻ���(�ǥե���� 7 ��)
        [2002-10-20]+14 �ϥ����������� �㤦�٤� �� 14 ���֤��餤�Τ�����
  * ���� (!)
      [2002-10-20]! �ϥ����������� ����
    * ����������Ť���, �⤭�����äƤ���
    * �������ʹߤ�, ���־���⤭�äѤʤ�
    * �����������⤭�Ϥ���뤫��, ͱͽ�����ǻ���(�ǥե���� 7 ��)
        [2002-10-20]!14 �ϥ����������� ���� �� 14 �������餤����ܤ��ܤ�
    * ͽ��ɽ(���)�ˤ�ɽ��
  * ��α (~)
      [2002-10-20]~ �ϥ����������� �㤪����
    * ����������, �⤭���ߤ򤯤꤫����
    * �������ޤǤ��������
    * �����������⤭���ߤ��뤫��, ͱͽ�����ǻ���(�ǥե���� 30 ��)
        [2002-10-20]!14 �ϥ����������� �㤪���� �� 14 ������
  * ͽ�� (@)
      [2002-10-20]@ �ϥ�����������
    * todo �����ǤϤʤ�, ͽ��ɽ��ɽ��
  * �� (.)
      [2002-10-20]. �ϥ�����������
    * �����

* action-lock
  * ��
      [2002-10-20]+9 �ۤ��ۤ�
    �Ρ�+9�פ˥��������֤��ƥ꥿���󤿤�����, �ߥ˥Хåե��˥�˥塼���Фơ�
    * ���Τޤޥ꥿���� �� �ֺѡ�
        [2002-10-20]. [2002-10-20]:+9 �ۤ��ۤ�
    * x ������ �� ��cancel��
        [2002-10-20]. cancel [2002-10-20]:+9 �ۤ��ۤ�
    * - ������ �� �����н���ѹ�
        [2002-10-20]-9 �ۤ��ۤ�
    * 14 ������ �� ͱͽ������ 14 �����ѹ�
        [2002-10-20]+14 �ۤ��ۤ�
  * ��˥塼��ͽ��ɽ��todo ���������ľ��á���ޤ�

* Tips (��λȤ���)
  * ��todo�פ�֡��ڡפ�������ɬ�פʤ�Τ���
    * ����ʳ��ϡֳн�פ�����ˤޤ����� (�ɤ��������ϤǤ��ޤ��� :p)
    * ����᤿�����, ͱͽ������Ĺ���ֳн�פ�
        [2002-11-10]-10 �ϥ�����������
  * �۵ޤǤϤʤ������פʤ���
      [2002-11-10]-999 ���ϥ�����������
  * ��Ω������������
      [2002-11-10] �����ϥ�����������

== Ƴ��ˡ

=== ���󥹥ȡ���

==== ��ư���󥹥ȡ���ξ��

* ���󥹥ȡ���
  * ./configure ���� make ����, root �ˤʤä� make install
    * *.el, *.elc �� /usr/share/emacs/site-lisp/howm/ ��
    * doc/, ext/ �� /usr/local/share/howm/ ��
  * xemacs �ξ��
      ./configure --with-xemacs
    * *.el, *.elc �� /usr/lib/xemacs/site-lisp/howm/ ��
  * ���󥹥ȡ�������ѹ���
      ./configure --with-howmdir=$HOME/elisp --prefix=$HOME
    * *.el, *.elc �� ~/elisp/ ��
    * doc/, ext/ �� ~/share/howm/ ��
  * ����¾�Υ��ץ����� ./configure --help �򻲾�
* ����
  * ~/.emacs (.emacs.el ����)���ɲ�
    * case 1: emacs ��ư�����ɤ߹���
        (setq howm-menu-lang 'ja)
        (require 'howm)
    * case 2: �Ϥ���� C-c , , ���������ɤ߹���
        (setq howm-menu-lang 'ja)
        (global-set-key "\C-c,," 'howm-menu)
        (autoload 'howm-menu "howm" "Hitori Otegaru Wiki Modoki" t)
    * �������, �⤷��Cannot open load file�פȤ����顼���Ф�ʤ�,
      �嵭�����ˤ�����ɲ�
        (add-to-list 'load-path "/usr/share/emacs/site-lisp/howm/")
  * ~/howm/ �κ������˥塼�ե�����Υ��ԡ������פǤ�
    (��˥塼��ư���˼�ư����)

==== ��ư���󥹥ȡ���ξ��

* *.el ��Ŭ���ʾ����֤� (��: ~/elisp/howm)
  * ~/.emacs (.emacs.el ����)��
    * �֤���˱�����, ���Τ褦�˵���
        (add-to-list 'load-path "~/elisp/howm/")
    * �����, ((<��ư���󥹥ȡ���ξ��>))��Ʊ�ͤε��Ҥ��ɲ�
  * �����ߤ�, �Х��ȥ���ѥ���
      cd ~/elisp/howm
      \emacs -batch -q --no-site-file --eval '(progn (add-to-list (quote load-path) ".") (byte-recompile-directory "." 0))'

==== ���󥹥ȡ������­

* �����ߤ�, ~/.emacs ��������ɲ� (��((<�������ޥ���>)))
    ;; ������
    (define-key global-map [katakana] 'howm-menu) ; [��������] �����ǥ�˥塼
    (setq howm-file-name-format "%Y/%m/%Y_%m_%d.howm") ; 1 �� 1 �ե�����
    (setq howm-keyword-case-fold-search t) ; <<< ����ʸ����ʸ������̤��ʤ�
    (setq howm-list-title nil) ; �������˥����ȥ��ɽ�����ʤ�
    (setq howm-menu-refresh-after-save nil) ; save ���˥�˥塼��ư��������
    (setq howm-refresh-after-save nil) ; save ���˲��������ľ���ʤ�
    (setq howm-menu-expiry-hours 2) ; ��˥塼�� 2 ���֥���å���
    (add-to-list 'auto-mode-alist '("\\.howm$" . rd-mode)) ; ���� rd-mode ��

* �ʤ�, ������ɰ����� ~/.howm-keys �˵�Ͽ�����
  * �������Ƥ�, �ƹ��ۤϴ�ñ. ��ʸ����ʸ���ζ��̤˱����ơ�
    * ���̤�����
      find ~/howm -name '*.howm' -print | xargs ruby -ne '$_ =~ /<<<\s+(.+)$/ and puts $1.split(/\s*<<<\s*/).join "\t"' | sort -u > ~/.howm-keys
    * ���̤��ʤ����
      find ~/howm -name '*.howm' -print | xargs ruby -ne '$_ =~ /<<<\s+(.+)$/ and puts $1.downcase.split(/\s*<<<\s*/).join "\t"' | sort -u > ~/.howm-keys

* ����
  * GNU Emacs �ʳ��ξ��:
    ��Ϥ褯�狼��ʤ��Τ�, �������Ƥ�������
    * xyzzy:
      wrapper ������Ƥ��ޤ�.
      ��
      ((<xyzzy �˴ؤ������|URL:http://homepage3.nifty.com/~ko-ji/>))
      �� howm-wrap (kimura ����).
    * meadow:
      ((<����Ѥ� Meadow|URL:http://www.bookshelf.jp/cgi-bin/goto.cgi?file=meadow&node=meadowmemo%20edition>))
      �ʤ�ǽ餫��Ȥ��ޤ�
      * cygwin + grep ���ѤΤȤ���,
        ���ǥ��쥯�ȥ�ȥ��ޥ�ɤ�ɥ饤�֥쥿��������ꤹ��.
        * ~/.emacs(.emacs.el ����) �Ǣ��Τ褦��
            (setq howm-directory "c:/cygwin/home/howm/")
        * cygwin ���鸫�� / �� emacs ���鸫�� / �������㤦�Ȥ�������.
    * emacsCE:
      �ɤ�����ư�����äƸ����褦��?
      ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/125>))
    * xemacs:
      ���������� patch ������ߤޤ���
      ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/209>))
      * font-lock �Υ�å����������������®���ʤ뤽��.
        thx > ((<�޸�����|URL:http://www.nc.kyushu-u.ac.jp/~kasahara/diary/2004/01b.html>))
          (setq font-lock-verbose nil)
    * carbon emacs:
      �б�?
      ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/229>))
    * Linux Zaurus:
      ((<Wiki|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?LinuxZaurus>))
      �򻲾Ȥ�������.
      ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/100>))
  * SKK ��Ȥ����
    * .emacs �˰ʲ���񤤤Ƥ����ʤ���, Dired-X �� C-x C-j ��å���ޤ�
        (setq dired-bind-jump nil)
  * viper-mode ��Ȥ����
    * viper-mode ������ howm-mode ������ɤ��Ƥ���
      * post-command-hook �˰�������??
  * ���󥽡��� (emacs -nw) �ξ��
    * emacs21 �ʤ�Ȥ���?
        (set-face-foreground 'action-lock-face "blue") ;; �����Τ����˿��Ĥ�
  * emacs19 �ξ��: �����
    * apel ((<URL:http://cvs.m17n.org/elisp/APEL/>))
      �������
    * emacs-20.7 �� easy-mmode.el ��
      emacs �� load-path ����֤��Ȥ�
      * ((<URL:http://www.cs.brandeis.edu/~bruncott/elisp/easy-mmode.el>))
        �ϥС������㤦�ߤ���
    * ����Ǥ�ޤ�ư���ʤ��Ȥ����
  * ((<RD|URL:http://www2.pos.to/~tosh/ruby/rdtool/ja/>))��Ȥ����
    * <<< �� RD �� include �Ȥ��֤�
    * �к���
      * include �ϻȤ�ʤ�. �ԤΤϤ���� <<< ��񤫤ʤ��褦���դ���.
      * include �ϻȤ�ʤ�. rd2 �򤫤������� howm2 -type=rd ���̤�.
      * ��󥯵�����ѹ�����
          ;; ��: .emacs (howm �����ɤ����)��
          (setq howm-ref-header "==>") ; goto ���
          (setq howm-keyword-header "<==") ; come-from ���
      * ((<�� howm wiki �Ρ�ʻ�ѥġ����|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?ExternalTool>))�⻲��

* ���Ǥ���ΰܹ� (ɬ���Хå����åפ�ȤäƤ���!) �� ((<URL:OLD.rd>))
  * ������ make install ���Ƥ�, �ĿͤΥ�˥塼�ե�������񤭹����Ϥ��ޤ���.
    ɬ�פʤ�, ��˥塼��ʬ���Խ����뤫,
    ja/0000-00-00-000000.howm ��ʬ�ǥ��ԡ����뤫���Ƥ�������.

=== �������ޥ���

����Ū�ˤ� M-x customize �� [Applications] �� [Howm] ��.
�Ԥ�Ȥ��ʤ����ܤ�, [Show] �Ǥ��꤬���ʴ����ͤ��������ǽ.

�����ˤʤ�����ˤĤ��Ƥ�, ~/.emacs (~/.emacs.el ����)��, �ʲ��Τ褦��ľ�ܽ�.
(��ä�����Ū�����Ť������, ((<URL:OLD.rd>))�򻲾�)

* ��
  * ���ƥХåե��� rd-mode �ʿ���Ĥ���
      ;; rd-mode.el ���ɤ߹��ޤ�Ƥ���Ȥ��������
      (setq howm-view-contents-font-lock-keywords rd-font-lock-keywords)

* ��������
  * �֥������ʡפǥ�˥塼, ��Ctrl-�������ʡפǿ������
      (define-key global-map [katakana] 'howm-menu)
      (define-key global-map [(control katakana)] 'howm-create)
  * [tab]([alt]-[tab])�Ǽ�(��)�Υ�󥯤˰�ư
      (define-key howm-mode-map [tab] 'action-lock-goto-next-link)
      (define-key howm-mode-map [(meta tab)] 'action-lock-goto-previous-link)
    * ����� tab �� C-i ��

* ��¸���
  * ����֤���/ǯ/ǯ����-��ʬ��.howm ��
      (setq howm-file-name-format "%Y/%Y%m%d-%H%M%S.howm")
    * �ե�����̾���Τ�ǯ���������äƤ��ʤ���, filter-by-date ����ǽ���ʤ�
  * 1 �� 1 �ե����� (����֤���/ǯ/��/ǯ_��_��.howm ��)
      (setq howm-file-name-format "%Y/%m/%Y_%m_%d.howm")
    * �Դ�������������ޤ�. �����Ǥ���ͤ����ɤ���
      * ���ñ�̤Ǥ���٤������ΰ������ե�����ñ�̤�
        (�����ȥ�ɽ��, ���������, ���ƤǤιʤꤳ��, uniq)
  * ������ɰ����� ~/howm/.howm-keys ���֤�
      (setq howm-keyword-file "~/howm/.howm-keys") ;; �ǥե���Ȥ� ~/.howm-keys
    * �������Ƥ�����, �㤦�ޥ���Ǥ� ~/howm/ �ʲ��Υ��ԡ������ǺѤ�.
    * ���Ǥ˽񤤤���⤬����ʤ�, mv ~/.howm-keys ~/howm/ �򤷤Ƥ�����,
      �ƹ��ۤ���(��((<���󥹥ȡ���>))).
    * �ǥ��å�: �������٤��ʤ�? (�δ��Ǥ���ۤɤ���, ��äƤߤʤ�������)

* ����
  * �����ǡ�!�פ����Ȥ��ν�����ޥ�ɤ��ѹ�
      (setq howm-view-summary-shell-last-file "_FILE_")
      (setq howm-view-summary-shell-hist
        '("mv _FILE_ ~/gomi" "touch _FILE_" "ls -l _FILE_"))
    * ������ޥ�ɤϡ�mv �ե�����̾ ~/gomi��
    * M-p �����Ƥ�����, ��touch �ե�����̾�פ��ls -l �ե�����̾��
  * �����Хåե��ο��Ĥ���
      (setq howm-view-summary-font-lock-keywords '(("^2003" . 'highlight)))

* ��˥塼
  * ��˥塼���ѹ�
    * ��˥塼�򳫤��� [menu �Խ�] ��ǥ꥿���� �� ��ͳ���Խ�
    * �褯�������ؤ� goto ��󥯤ʤɤ�񤤤Ƥ�������������
  * ��˥塼�ե�����ˡ�%recent�פ��%random�פȽ񤯤�,
    �ֺǶ�Υ��פ�֥��������������פΥ����ȥ����
    * �������ޥ���
        (setq howm-menu-recent-num 20)  ;; ɽ������Ŀ�
  * ��˥塼����ѿ���ؿ����ͤ�ɽ��
    * ��˥塼��ˤ����񤯤ȡ�
      * %here%foo     �� foo ���ͤ�ɽ��
      * %here%(foo 3) �� (foo '3) �η�̤�ɽ��
        * ��: %here%(howm-menu-search "�ۤ�") �� �֤ۤ��פθ�����̤�������
        * ������, ��Ͽ�����ؿ������Ȥ��ޤ��� (���ä��ʤ�����)
            (setq howm-menu-allow
                  (append '(foo bar) howm-menu-allow)) ;; foo �� bar �����
  * ��˥塼���ⰷ�����ʤ� (���������������оݳ���)
      ;; mv ~/howm/0000-00-00-000000.howm ~/hoge/fuga/menu.howm ���Ȥ��ơ�
      (setq howm-menu-file "~/hoge/fuga/menu.howm")

* ��äȷڤ� (cf. ((<�ٹ�Ū�ץ�����ߥ�|URL:http://pitecan.com/fugo.html>)))
  * ��Ҥ� M-x customize �� [Howm Efficiency] �򻲾�
  * �ä�, �ܵ��ǻȤ��ˤ� howm-view-use-grep ������򤪤����ᤷ�ޤ�
  * Tips: gc-cons-threshold ���ͤ����䤹��®���ʤ��礬����
    ((<ref|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/220>))
    ((<ref|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/234-236n>))
      (setq gc-cons-threshold (* 4000 10000))
  * Tips: grep-2.5 �Ǥ�, �Ķ��ѿ� LANG �� C �ˤ��Ƥ�����,
    �ޥ���Х����б������դˤʤä�®���ʤ�
    ((<ref|URL:http://search.luky.org/vine-users.5/msg06363.html>))

* ����
  * �оݥǥ��쥯�ȥ���ɲ�
    * ��ʸ�����ΤȤ�, ���˲ä��ƻ���ǥ��쥯�ȥ�ʲ���Ƶ�Ū��õ��
        (setq howm-search-path '("~/Mail" "~/News"))
        (setq howm-search-other-dir t) ;; �����Υȥ���ν���� (t �� nil)
    * M-x howm-toggle-search-other-dir ��,
      �嵭�ǥ��쥯�ȥ�򸡺��оݤˤ��뤫���ʤ����ȥ���
      * �����Х���ɤ�������гƼ��� (���󥿡��ե������Ϻ���ˤĤ���)

* ̤��¸�������ȰѺٹ��鷺, howm-mode �ʥХåե��򤹤٤ƶ���������륳�ޥ��
  (�������ᤷ�ޤ���. �Ȥ�ʤ��Ǥ�������.)
  * C-u C-c , Q
  * ��˥塼�˽񤯤ʤ� [��������]
  * ʪ���ʤΤ�, ����񤤤Ȥ��ʤ���̵��
      (setq howm-kill-all-enable-force t)

* �ƥ�ץ졼�Ȥ��ѹ���
  * ����ʤդ���
      Subject: �����ȥ�С��˻��פ�ɽ�� ��ľ���Υ꡼����������
      Date: Thu, 12 Sep 2002 15:45:59 +0900
      In-Reply-To: </home/hira/sawfish/rich-title/rich-title.jl> ��ľ���ե�����
      
      �� �� ��������
    * ~/.emacs ��
        (setq howm-template "Subject: %title\nDate: %date\n%file\n%cursor")
        (setq howm-template-date-format "%a, %d %b %Y %H:%M:%S %z")
        (setq howm-template-file-format "In-Reply-To: <%s>\n")
  * �ƥ�ץ졼�Ȥ�ʣ������
      ;; C-u 2 C-c , c �� 2 ���ܤΥƥ�ץ졼�Ȥǿ������
      ;; ��˥塼���� C-u 2 c �Ǥ�Ʊ��
      (setq howm-template
            '("= %title%cursor\n%date %file\n\n" "%date: %title%cursor"))
    * �Ĥ��Ǥ�, howm-template ���ͤ��ؿ��ʤ�
      ��universal-argument ��ľ���ΥХåե�������ˤ��Ƥ����Ĥ�Ƥ֡�
      �äƤ����Τ�Ź��ߤޤ���

* �񼰤��ѹ��� (howm-*.el �� load �������)
  * �����ȥ�(�����ڤ�) @@@ ��
      (setq howm-view-title-header "@@@")
  * goto ��� ==>��, come-from ��� <==��
      (setq howm-ref-header "==>")
      (setq howm-keyword-header "<==")
  * goto ��� ((��ġ�)), come-from ��� ((���ġ�))
      ;; ��䡧��Ⱦ�Ѥ�ľ���Ƥ�������
      (setq howm-ref-regexp "((��\\([^��\r\n]+\\)��))")
      (setq howm-ref-regexp-pos 1)
      (setq howm-keyword-format "((��%s��))")
      (setq howm-keyword-regexp "\\(((��\\)\\([^��\r\n]+\\)��))")
      (setq howm-keyword-regexp-hilit-pos 1) ;; �ִ�Ϣ������ɡ���
      (setq howm-keyword-regexp-pos 2)
      (setq howm-keyword-regexp-format "%s") ;; M-x describe-variable ����
    * ��: come-from ������ɤ� alias �Ǥ�,
      ���Τɤ��餫�������ꤷ�Ƥ��ޤ���.
      * �֡Ĥ����׷�: <<< foo <<< bar <<< baz
      * �֡Ĥ���Ĥޤǡ׷�: ((��foo��)) ((��bar��)) ((��baz��))
  * wiki ����� [[hoge]] �β������]]�פ�����
    * ��<<< hoge�פκ������, ��hoge�פˤⲼ��
        (setq howm-wiki-regexp "\\[\\[\\([^]\r\n]+\\)\\(\\]\\]\\)")
        (setq howm-wiki-regexp-hilit-pos 2)
        (setq howm-wiki-regexp-pos 1)

* ���ޤ���
  * ��������(C-c , d �ޤ��� [����])��ǯ����ά������, ��̤��פȲ��
      (setq howm-insert-date-future t)
    * �������ϻ��ΤߤǤ�. ��[2003-12-27]�׾�� RET �����Ȥ���ư��Ͻ���ɤ���.
  * ��http://�פǥ꥿���󲡤�����, URL �� kill-ring ��
      (setq action-lock-no-browser t)

* ͽ��ɽ��todo ����
  * ��ޥ��������(!+-~@.)���� RET ��ȯ�ǡֺѡפ�
      (setq howm-action-lock-reminder-done-default "")
    * ���ξ��, C-u RET �ǽ����ư�� (����󥻥�, �����ѹ�, ��)
  * ͽ��ɽ��todo ���������ޥ����������ľ�� RET �����Ȥ�,
    á������Хåե���ư save
      (setq howm-action-lock-forward-save-buffer t)
    * �ּ�ư save�פ��񹳤ʤ��������ɤ���
    * ��ư�� C-x s (̤��¸�Хåե������� save)�ʤꤹ��������ƻ����
  * ��α�������ϰ�
      (setq howm-todo-priority-defer-init -14)  ;; ����� = ����
      (setq howm-todo-priority-defer-peak 0) ;; ���
  * !+-~. �ν��٤Υ������ޥ���
    * ��: ��˥塼��, �����������ɽ���סֺѤ�ɽ����
        (setq howm-menu-todo-priority -50000)
        (setq howm-todo-priority-done-bottom -44444)
    * howm-todo-priority-normal-bottom ��. ������(howm-reminder.el)����.

* action-lock
  * { } (�ȥ��륹���å�)���ѹ�
      ;; howm �� load ����
      (setq action-lock-switch-default '("{ }" "{*}" "{-}")) ;; ���ĤǤ�
  * {_} (̤����)���ѹ�
      (setq howm-dtime-format "[%a %b %d %H:%M:%S %Y]") ;; {_}
      (setq howm-template-date-format "[%Y-%m-%d %H:%M]") ;; �ƥ�ץ졼��
  * ��file://�ġפ��http://�ġפ��ѹ� (�ޤ��������罸)
    ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/945>))
      ;; howm (���Τˤ� action-lock.el) �Υ����ɤ������.
      ;; ��file://��
      (setq action-lock-open-regexp
            "\\<file://\\(localhost\\)?\\([-!@#$%^&*()_+|=:~/?a-zA-Z0-9.,;]*[-!@#$%^&*()_+|=:~/?a-zA-Z0-9]+\\)\\>")
      (setq action-lock-open-regexp-pos 2) ;; 2 ���ܤΡ�\\(��\\)�פ��ե�����̾
      ;; ��http://��
      (setq action-lock-browse-regexp
            "\\<\\([htp]\\{3,5\\}s?\\|ftp\\)://\\([-!@#$%^&*()_+|=:~/?a-zA-Z0-9.,;]*[-!@#$%^&*()_+|=:~/?a-zA-Z0-9]+\\)\\>"
      (setq action-lock-browse-regexp-pos 0) ;; �ޥå��������Τ� URL
  * action-lock �ɲ���:
    ��Message-ID: �ġפǥ꥿���󲡤�����, �����᡼��� namazu �Ǹ���
      ;; howm �� load �������
      (defun my-howm-search-message-id (id)
        (message "Searching...")
        (let* ((query (format "+message-id:%s" id))
               (args `("-l" "-n" "1" ,query "/home/hoge/NMZ/Mail"))
               (found (car (howm-call-process "namazu" args))))
          (if found
              (progn
                (find-file found)
                (re-search-forward "^$" nil t)
                (message "Done."))
            (message "No match."))))
      (setq action-lock-default-rules
            (cons (action-lock-general 'my-howm-search-message-id
                                       "Message-[Ii][Dd]: \\(.*\\)$"
                                       1)
                  action-lock-default-rules))

* ��˥塼�򹹿����뤿�Ӥ�, ���������ؤ� export �⹹�� (��((<�����ġ���>)))
    (defun my-howm-menu-hook ()
      (shell-command "tag2plan ~/howm/*/*/*.howm > ~/.dayplan_tag &")
      (switch-to-buffer howm-menu-name))
    (add-hook 'howm-menu-hook 'my-howm-menu-hook)

* ((<RD|URL:http://www2.pos.to/~tosh/ruby/rdtool/ja/>))��Ȥ����:
  ((<"��Ƭ�� * �ǥ���ȥ�γ��Ĥ��Ǥ���褦��"|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/237-238n>))

* ���ޤ�
    (setq howm-congrats-format
          '(
            "%s��������������(���ϡ�)����������!!!!"
            "(���ϡ�) %s!"
            "�ʡ맥��)%s��"
            "�ʡ���_��`�ˡ㡡%s"
            ;; �İʲ�ά��
            ))

* ��äȤ�������������ˤ�, *.el ��Ƭ�򻲾�

=== �����ġ���
(Ʊ���ġ���� ext/ ��)

* HTML �ؤ��Ѵ�: howm2 (Ʊ��. �� ruby)
  * ��
    * ���ǥ��쥯�ȥ� ~/howm/ ���Ѵ����� ~/converted/ ���Ǥ�
        ./howm2 ~/howm/ ~/converted/
    * <<< ����ʸ����ʸ����̵��
        ./howm2 -i ~/howm/ ~/converted/
    * ��󥯽񼰤λ���
        ./howm2 -comefrom='<<<' -goto='>>>' ~/howm/ ~/converted/
    * �֤ۤ��פ�ޤ�ե�������� HTML ��
        grep -rl '�ۤ�' ~/howm/ | howm2 -list ~/converted/
  * ���⹩�פ��Ƥʤ��Τ�, ���٤��ĥ���ɤ�����
  * alias �ΡֺƵ�Ū�ʡ�Ÿ����̤���ݡ���

* �������� & todo ����: hcal.rb (Ʊ��. �� ruby)
  * ��������(ͽ�ꡦ���ڡ��Ѥߤΰ���)�����
      hcal.rb -schedule_mark='��' -deadline_mark='��' -done_mark='��' ~/howm/*/*/*.howm
    * ����ʴ����Ǥ��餺��
        ----------------<6>---------------- 2003
        01 Sun 
        02 Mon ������������Ϣ�� ��B4�ع� ���� �����ش��ü¸� 12:40 <<<<##>>>>
        ��
    * ���ϡ���(@[2003-06-02]!), ����ͽ��(@[2003-06-02]@), ���Ϻ�(@[2003-06-02].)
    * <<<<# �ϡֺ�����, #>>>> �ϡ���ǯ��Ʊ��Ʊ����
      * ����ʴ����� alias ���Ȥ�������
          alias hcal="hcal.rb -schedule_mark='��' -deadline_mark='��' -done_mark='��' ~/howm/*/*/*.howm | less '+/<<<<#'"
  * �ֽ��ٽ� todo �����פ����
    (howm ��Ȥ��ʤ�����. ChangeLog �ɤʿͤؤΤ��ޤ��Ǥ�)
    * ���ޥ�ɥ饤���
        hcal.rb -l memo.txt
    * emacs ���� M-x grep ����
        Run grep (like this): hcal.rb -l ~/memo/*.txt

* ��������: 
  ((<plan|URL:http://www.bitrot.de/plan.html>))
  * ��⤫��ͽ�ꡦ���ڤ���Ф���, plan ��ͽ��ɽ������Ǥ��ޤ� (�� ruby)
  * ���
    * ����: plan ��ư��, ��˥塼�� [file]��[file list] ��
      ~/.dayplan_tag ���ɲä��Ƥ���
    * Ʊ���� tag2plan ��
        tag2plan ~/howm/*/*/*.howm > ~/.dayplan_tag
      �Τ褦�ˤ��ƥ�����С��Ѵ�
    * plan �� [file] �� [reload]

* �վ�񤭻ٱ�:
  ��ξ��, RD �Ȥ����񼰤�Ȥ������Τ�, �ʲ���ʻ�Ѥ��Ƥ��ޤ�
  * ((<rdtools|URL:http://www2.pos.to/~tosh/ruby/rdtool/ja/>))
    �� rd-mode.el
  * ((<rd-mode-plus.el|URL:http://howm.sourceforge.jp/a/rd-mode-plus.el>))

* �ʰ׾�����Ģ
  * ������ɤ����, ������˽񤤤Ƥ���
      $����$ 500�� �顼���
  * ��<<< $����$�פʤ��>>> $����$�פʤ�ǰ�����ɽ��.
    �ʤ���ߡ������Ȥ����ϰϻ���.
  * M-x yen-region ��, �֢����ߡפ���
    �� ((<yen.el|URL:http://howm.sourceforge.jp/a/yen.el>))

* ((<�� howm wiki �Ρ�ʻ�ѥġ����|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?ExternalTool>))�⻲��

== ����

=== �����ˤĤ���

* �ե����볫������Ӥ˥������äƤ����°׼���
  * ~/.howm-keys �˥�����ɤΰ���
  * �ե�����򳫤��Ȥ��ϡ�
    * .howm-keys �γƥ�����ɤˤĤ���, �и���̵ͭ�򸡺�
    * �и�������ɤ� or �ǤĤʤ�������ɽ�������
    * ��������ɽ���� font-lock �� action-lock ������
  * �ե�������¸�������Ƥ򥹥���󤷤�, ~/.howm-keys �򹹿�

* ����
  * ���ǥ��쥯�ȥ� ~/howm/ �ʲ���Ƶ�Ū��������.
    �ե�����̾���ĥ�Ҥ� ~/howm/ �ʲ��Υǥ��쥯�ȥ깽����, �ɤ��Ǥ�褤.
    * �ե�����̾�������, 
      * �ե�����̾��ǯ���������äƤ��� (filter-by-date �Τ���)
      * string<= �ǥ����Ȥ�����������ˤʤ�
  * �ߴ��ʸ����ؿ��������Ѱ�. ����������Ȥ���.
    * real-grep (grep ��Ƥ�)
    * fake-grep (elisp �Τ�)

* �¹�®��
  * ��ε�Ķ�����, ������ե����볫���Τ� 1��2 �ä��餤 (grep ���ѻ�)
    * �ե������ 1000 ���ޤ�
    * Pen III 700MHz, mem 384M
  * ������ϥǡ����١����ʤꥭ��å���ʤ�ɬ�פ���.
    �ĤȻפäƤ�����, ���Τ��ޤ�®�����⥳��ԥ塼������ǽ���夬®���ä�.

* �ե����빽��
  * howm ���ΤȤ���Ω
    * bcomp.el
      * make ���˻Ȥ�����
      * navi2ch-cvs-0.0.20031209 �������
    * cheat-font-lock.el
      * font-lock-keywords ��夫���ѹ����뤿��δؿ�
      * font-lock.el �����������˰�¸
    * action-lock.el
      * action-lock-mode (minor-mode)
        * ��ʸ(����ɽ��)����ˡ(�ؿ�)���Ȥ���Ͽ
        * �꥿���󥭡�á������
          * ��ʸ�ξ� �� ��ˡ��ȯư
          * ����ʳ� �� ����Υ꥿���󥭡�
    * riffle.el
      * riffle-{summary|contents}-mode
        * ���������ƤΤѤ�Ѥ�ɽ��, ���Ƥ�Ϣ��ɽ��
        * �����Ǥ�, post-command-hook �ǰ�ư���� �� ����ɽ���򹹿�
        * �Хåե����������ѿ� riffle-item-list �˹��ܤ��ݻ�
      * gfunc.el �����
    * gfunc.el
      * ��ľ generic function
    * illusion.el
      * illusion-mode (minor-mode)
      * �դĤ��Ρ֥ե�����פǤʤ��оݤ�, �������Խ�������¸
      * ���ΤȤ������Ѥ���Ƥ��ʤ�
    * honest-report.el
      * �Х���ݡ��Ȥ�����
  * howm ����
    * ����
      * howm-backend.el
        * �Хå�����ɤ�ʬΥ (�ޤ��Դ���)
        * ��ݲ�
          * �ǥ��쥯�ȥ� �� folder
          * �ե����� �� page
          * �ޥå��ս� �� item
      * howm-view.el
        * howm-view-{summary|contents}-mode (major-mode)
          * riffle-{summary|contents}-mode ��������
          * �����μ¹�
      * howm-mode.el (howm-mode-mode.el �����̾[2004-07-14])
        * howm-mode (minor-mode)
          * ��ҤΥ������ʤ�
    * ����
      * �ޤ�Ŭ���˥ե������ʬ��������. ��������Ω���� tool �ˡ�
        * howm-date.el
          * �������Ϥλٱ�
        * howm-reminder.el
          * ������ todo
        * howm-menu.el
          * howm-menu-mode (major-mode)
    * ����
      * howm-version.el
        * ��� howm-version �����ꤹ�����
      * howm-vars.el
        * defvar, defcustom, ��
      * howm-lang-*.el
        * �����¸���ѿ�
      * howm-menu-*.el
        * �����˥塼�ե���������Ƥ�ʸ��������Ȥ������
      * howm-mkmenu.el
        * howm-menu-*.el �� ja/0000-00-00-000000.howm �������������륹����ץ�
        * ��԰ʳ��ϻȤ�ɬ�פʤ��Ϥ�
    * ��
      * howm-cl.el
        * cl �ѥå������ؤΰ�¸��ޤȤ᤿����
      * howm-common.el
        * howm-*.el �� require
        * �ä�, �ե�����ޤ����ǻȤ��ޥ����Ϥ����� (�� byte-compile �к�)
      * howm-misc.el
        * ��
      * howm.el (howm-mode.el �����̾[2004-07-14])
        * �ᥤ��ե�����. require �������.

=== ư���ޤ����?

(�Х��λ�Ŧ�򤯤���������)

* �ʲ��Τ褦�ˤ��Ƥ���������, Ĵ�����䤹���ʤ�ޤ�
  * �Ǥ������ make test �򤪴ꤤ���ޤ�
      cd howm-��.��.��
      make test
  * win �ʤ�, test.bat �򤪴ꤤ���ޤ�
    * test.bat ��Ρ�HOWM_EMACS=�ġפ�Ķ��ˤ��碌�ƽ���
    * test.bat ��¹�
  * �ɤ����, emacs ��Ω��������, ����ɼ��ɽ������ޤ�
  * ((<�ʤ�Ǥ虜�虜? �� �Х���ݡ���FAQ|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BugReportFAQ>))

* ��­: ��������ľ���
  * �ֻ��ͤ��סִ��ΤΥХ����פΥ����å��ä�, ���ä����Ǥ���ͤ�.
  * howm �˴ؤ��Ƥ�, ���Υ����å������פǤ�.
    �������, ���ڤˤɤ�ɤ��Ŧ���Ƥ��������������꤬�����Ǥ�.
  * ����, ��Ԥ��ܤ��Ϥ��Ȥ���(2ch �� howm wiki)�ˤ������Ǥ�������.
  * cf. ((<�����ץ󥽡����ϲ�Į����|URL:http://nnri.dip.jp/~yf/cgi-bin/yaswiki.cgi?name=%A5%AA%A1%BC%A5%D7%A5%F3%A5%BD%A1%BC%A5%B9%A4%CF%B2%BC%C4%AE%B5%A4%BC%C1>))

* maxima-mode ��Ƴ������� howm �����顼��[2003-04-03]
  * �������������ƥ� Maxima ���տ魯�� smart-complete.el ���Ե�������,
    �ؿ� split-string ���񤭤��Ƥ��ޤ�
    * �Ƶ��Ǽ������Ƥ�Τ�, Ĺ��ʸ�������
      ��Lisp nesting exceeds max-lisp-eval-depth��.
    * ��� /usr/share/emacs/site-lisp/smart-complete.el �γ����ս��
      �����ȥ����Ȥ��Ƥ��ޤ��ޤ���
        ;(defun split-string (s bag)
        ;  (cond ((equal (length s) 0) '(""))
        ;       ((string-match bag s)
        ;        (if (= (match-beginning  0) 0)
        ;           (cons "" (split-string (substring s (match-end 0)) bag))
        ;          (cons (substring s 0 (match-beginning 0))
        ;                (split-string (substring s (match-end 0)) bag))))
        ;       (t (cons s nil))))
  * Maxima �ˤĤ��Ƥ�
      http://maxima.sourceforge.net/
      http://phe.phyas.aichi-edu.ac.jp/~cyamauch/maxima/

* ��Գн�
  * �ǥХå����ѿ� howm-call-process-last-command
  * C-u M-x howm-bug-report �Ǵ�Ϣ�ѿ��ΰ���
  * M-x howm-elp ��, �ץ��ե����� elp �ν���

=== todo

* ((<howm wiki|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi>))����
  * ((<�����ͽ��|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?RoadMap>))
  * ((<�����ǥ�|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?Idea>))

=== �Х�������

* ((<howm wiki|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi>))����
  * ((<�Х���ݡ���|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BugReport>))

== ����

=== ����

�ä�, Q-pocket��HashedWiki��ChangeLog ��⤫�餤�äѤ��ޤͤ��Ƥޤ�. ����.

* ((<Wiki|URL:http://c2.com/cgi/wiki>)):
  web ��ï�Ǥ��Խ��ܤ���ڥ�󥯡ܤ���ڥե����ޥå�
  * ((<WikiModeDiscussion|URL:http://www.emacswiki.org/cgi-bin/wiki.pl/WikiModeDiscussion>))
    (EmacsWiki): Emacs �Ǥ� Wiki
  * ((<RWiki-mode|URL:http://www.jin.gr.jp/~nahi/RWiki/index.cgi?cmd=view;name=rwiki-mode>))
    (RWiki): RWiki �� Emacs ����Ȥ���
  * ((<QP-Wiki|URL:http://www.csl.sony.co.jp/person/masui/UnixMagazine/>))
    (�����Ƿ����): PDA �� Wiki
  * ((<HashedWiki|URL:http://cake.dyndns.org/hashedwiki/>))
    (SHIMADA Keiki ����): �ѥ饰��ջظ� Wiki
    �� ((<����������|URL:http://www.ops.dti.ne.jp/~cake-smd/hw/>))
  * ((<ishinao ����γƼ�ġ���|URL:http://ishinao.net/>)):
    Wiki �ˤȤ���ʤ������ǥ�����
  * ((<������ȯ�� wiki ��������ꥹ�ȡ�|URL:http://www1.neweb.ne.jp/wa/yamdas/column/technique/clonelist.html>))
    ((<��2��|URL:http://www1.neweb.ne.jp/wa/yamdas/column/technique/clonelist2.html>))
    (yomoyomo ����)

* HyperCard: card �� database Ū visual script ����Ķ�???
  * ((<��HyperCard��|URL:http://www.hyuki.com/yukiwiki/wiki.cgi?HyperCard>))
    (YukiWiki)
  * ((<��HyperCard�Υꥢ�륿��������|URL:http://mwave.sppd.ne.jp/wiki/pukiwiki.php?%5B%5BHyperCard%A4%CE%A5%EA%A5%A2%A5%EB%A5%BF%A5%A4%A5%E0%C0%AD%5D%5D>))
    (SsPukiWiki)
  * ((<�֥ϥ��ѡ������ɤǤĤ��륪�ե��������ƥ��|URL:http://www.kanzaki.com/hc/MacUser.html>))
    (�������Ѥ���)

* ���Ȥ�Ķ�
  * ʬ�ऻ��, ���ֽ����ʸ�����Ǵ���
    * ((<Q-Pocket|URL:http://www.csl.sony.co.jp/person/masui/UnixMagazine/>))
      (�����Ƿ����):
      PDA �Ǥ�
    * ChangeLog ���
      * ((<��Unix�Υ�⵻�ѡ�|URL:http://namazu.org/~satoru/unimag/1/>))
        (����ů����)
      * ((<�ֻ�� ChangeLog ������ˡ��|URL:http://nais.to/~yto/doc/zb/0016.html>))
        (����ãͺ����)
      * ((<��ChangeLog �����Ƥߤ褦��|URL:http://pop-club.hp.infoseek.co.jp/emacs/changelog.html>))
        (������Ƿ����)
  * ((<�·ϡ�Ķ��|URL:http://www.h5.dion.ne.jp/~syo/_soft.htm>))
    (syo ����): ChangeLog + �ܼ����¤٤�����hyper link �äƴ���?
  * ������åץ֥å�
    * ((<�� 2001|URL:http://www.vector.co.jp/soft/win95/writing/se120325.html>))
      (�����������): ����
    * ((<WeBoX|URL:http://www-nishio.ise.eng.osaka-u.ac.jp/~nakamura/webox/index.html>))
      (��¼��ˤ���): �����������餷��
  * ����¾�� Emacs �ѥġ���
    * ((<notes-mode|URL:http://www.isi.edu/~johnh/SOFTWARE/NOTES_MODE/>))
      (John Heidemann ����):
      link �����������Τ�ޤ���
      * ((<notes-mode �� memo-mode �������|URL:http://mibai.tec.u-ryukyu.ac.jp/~oshiro/Programs/others/compare-notes-and-memo-mode.html>))
        (���ܹ��֤���)
    * ((<memoma|URL:http://www.jaist.ac.jp/~tetsu/memoma/memoma.html>))
      (����ů������): MH ���� �� �᡼��꡼���Ǥ��ɤ��
    * ((<Um4|URL:http://www.d4.dion.ne.jp/~usuda/emacs/index.html>))
      (������ˤ���): ����������¸��˥塼
    * rd-memo
      (�ۺ�. ��ȯ��λ �� ((<tar.gz|URL:http://howm.sourceforge.jp/a/rd-memo.tar.gz>)))
      * ((<�֥���ԥ塼���Ķ��ǤΥ���|URL:http://www.jin.gr.jp/~nahi/RWiki/?cmd=view;name=%A5%B3%A5%F3%A5%D4%A5%E5%A1%BC%A5%BF%B4%C4%B6%AD%A4%C7%A4%CE%A5%E1%A5%E2>))
        (Tosh����): Wiki �����ܤ������ä���
  * howm ��Ϣ
    * �ܿ�
      * ((<howm-mode.vim|URL:http://sworddancer.funkyboy.jp/howm_vim/>))
        (������줵��): vim ��
      * ((<howm-wrap|URL:http://homepage3.nifty.com/~ko-ji/>))
        (kimura ����): xyzzy ��
      * ((<howm.mac|URL:http://mrm.seesaa.net/category/789739.html>))
        (Mr.M ����): ������
    * ������ todo �ꥹ��
      * ((<wikilog|URL:http://koten.hypermart.net/wikilog_rc01.l>))
        (Gonza ����): xyzzy ���ǥ����Ѥ�, Wiki + ChangeLog ���
        �� ((<�а�|URL:http://pc2.2ch.net/test/read.cgi/win/1053880433/n29-36>))
      * ((<howm��TODO����WEB���ץ�|URL:http://www.lyricfathom.com/pukiwiki/pukiwiki.php?howm%BC%B0TODO%B4%C9%CD%FDWEB%A5%A2%A5%D7%A5%EA>))
        (�����): PHP �Ǥμ���
      * ((<wema|URL:http://wema.sourceforge.jp/>))
        (�դ��Ϥ餫�󤵤�): ��䵥١����� Wiki Ū�ʤ��.
        ��䵼��Τ��岼�˰�ư. æ˹.
      * ((<LesserWiki|URL:http://lesserwiki.org/>))
        (yatsu����): Ajax �� Wiki

* �����ˤ���
  * ((<memo-mode|URL:http://mibai.tec.u-ryukyu.ac.jp/~oshiro/Programs/>))
    (OSHIRO Naoki ����): �վ�񤭻ٱ�. �٤��ܤ�.
  * ((<get-date|URL:http://mibai.tec.u-ryukyu.ac.jp/~oshiro/Programs/>))
    (OSHIRO Naoki ����): ���������դ�ȿ��Ū������. �٤��ܤ�.
  * ((<migemo|URL:http://migemo.namazu.org/>))
    (����ů����): �����޻����������������ܸ�⸡��. ����.
  * ((<rdtool|URL:http://www2.pos.to/~tosh/ruby/rdtool/ja/>))
    (Tosh����): ���� README �ǻȤäƤ�ɥ�����ȥե����ޥå�. ����.
  * ((<elscreen|URL:http://www.morishima.net/~naoto/j/software/elscreen/>))
    (Naoto Morishima����): GNU screen �� Emacs ��. ����.

* elisp
  * ����ͺ�����֤䤵���� Emacs-Lisp �ֺ¡�(���åȥ����ƥ�, 1999)
    ISBN 4-906391-70-2
    �� 
    ((<����饤���� (��?)|URL:http://www.gentei.org/~yuuji/elisp/>))
    * elisp �Ϥ����ʤ鰵��Ū�ˤ�������
    * 6.4 ��������Ρ֥������� dired�פ򻲹ͤˤ����Ƥ��������ޤ���

=== ������Ͽ

thx > patch�����ɰơ���Ŧ�򤯤����ä�����

* ��꡼���� howm-1.3.4 [2006-12-16]
  * �������ƥ�����
    ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/207>))
    * ��������?
      * Emacs �ˤ�, �ե����뤴�Ȥ˥��������ѿ���ư���ꤹ�뵡ǽ������ޤ�.
        ������Ѥ����, howm ���ѻ���Ǥ�դ�̿���ư�¹Ԥ����뤳�Ȥ��Ǥ��ޤ�.
        ((<ref|URL:https://www.codeblog.org/blog/ueno/20060118.html>))
    * �ɤ�ľ����?
      * howm ��Ϣ��������ܥ�� risky-local-variable °���򥻥åȤ�,
        ��Ҥμ�ư������˥����å�������褦�ˤ��ޤ���.
    * �С�����󥢥åפ������ʤ�/�Ǥ��ʤ��ΤǤ���?
      * ���������Խ�����ǽ�ʤ�,
        howm.el �������˰ʲ��Υ����ɤ�ä���Τ��μ¤Ǥ�.
        �Х��ȥ���ѥ���Τ��ʤ����⤪˺��ʤ�.
          ;; howm-1.2.2 �ʹ���. howm ��Ϣ��������ܥ�� risky-local-variable °��.
          (mapcar (lambda (symbol) (put symbol 'risky-local-variable t))
                  (howm-symbols))
      * ���줬����ʾ��� .emacs �˰ʲ���ä��Ƥ�������.
          (eval-after-load "howm"  ; �� autoload/load/require �ε��Ҥˤ��碌��
            ;; howm-1.2.2 �ʹ���. howm ��Ϣ��������ܥ�� risky-local-variable °��.
            '(mapcar (lambda (symbol) (put symbol 'risky-local-variable t))
                     (howm-symbols)))
      * �ɤ���ˤ���, ������ȿ�Ǥ��줿���Ȥ򤴳�ǧ��������.
        * emacs ��Ω���夲ľ��, howm ��ư
        * �ʲ��� *scratch* �Хåե���Ž��, �Ĥ���̤θ�˥���������֤��� C-j ��
          ����
            (get 'howm-version 'risky-local-variable)
        * t ��ɽ�������� OK
    * ���������ѿ��μ�ư����򤢤��ƻȤ������Ȥ���?
      * �ʲ��Τ褦���ѿ����Ȥ˲�ؤ��Ƥ�������.
          ;; ��: �ѿ� howm-auto-narrow �ϥե����뤴�Ȥμ�ư��������
          (put 'howm-auto-narrow 'risky-local-variable nil)
    * howm �˸¤餺, ���������ѿ��μ�ư�������ڻȤ��ʤ�����ˤ�?
      * .emacs �˰ʲ���ä��Ƥ�������.
        ������ emacs �ΥС������ˤ�äƤ��Դ������⤷��ޤ���.
        ((<ref|URL:http://www.kmc.gr.jp/~tak/memo/emacs-local-variable.html>))
          ;; ���������ѿ��μ�ư����򥪥�
          (setq enable-local-variables nil)
  * fix: CVS ��ü emacs �ǥ�˥塼�ʤɤ˿����Ĥ��ʤ�
    ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/165-169n>))
    * ������, cheat-font-lock-20040624-format-p �������� = �� >= ��ľ������
    * howm-test061015 ����ΥХå��ݡ���

* ��꡼���� howm-1.3.3 [2006-06-05]
  * Note
    * �ǿ��� Emacs 22.0.50 (CVS HEAD) �ˤ��֤��б�
      * Meadow 3.00-dev �� Carbon Emacs �⤳����������ޤ�.
        �����֥�꡼�����γ�ȯ�Ǻ���ü Emacs��
        �򺣸���ɤ�³��������, howm ��ƥ����Ǥ������ƤߤƤ�������.
    * �ե����빽���򾯡��ѹ�
      * make install �ʳ�����ˡ�ǥ��󥹥ȡ��뤹����Ϥ���ǧ��������.
        �����˥塼 0000-00-00-000000.howm �μ�ư���ԡ������פˤʤ�ޤ���.
    * ��˥塼�� todo �����Ǥ�������ι��ܤ�ǥե���Ȥ�ɽ��
      * �ǥե���Ȥϡְ���¦�פ��ݤ��Ƥ��������ɤ��Ǥ��礦.
        ����ޤ��̤걣����ˡ�ϲ��Ρ��ѹ��פ򻲾Ȥ�������.
    * ����¾, grep ��ʸ�������ɤ˴ؤ��뽤����, ������ǽ�ʤ�
      * ������ǽ�Ǥ�, ���Ȥ�򤵤�˼�ڤˤ��� M-x howm-remember ��
        ��ɾ�Τ褦�Ǥ�.
    * howm-1.3.3rc1 �� howm-test060515 ����Ȥ�Ʊ��
      * meadow3 �ǥϥޤä��ͤ�¿�����ʤΤǥ�꡼�����뵤�ˤʤ�ޤ���.
        ���԰���ʳ�ȯ�ǡפȤ�����������ʤ��⤦���̤���ڤ��Ƥ���Τ��ʡ�
  * �ѹ�������
    * ��˥塼�� todo �����Ǥ�������ι��ܤ�ǥե���Ȥ�ɽ��
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/75-77n>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/842-845n>))
      * ����������� M-x customize-variable howm-menu-todo-priority
    * grep ����ʸ������������ howm-process-coding-system ��,
      ���ϤȽ��Ϥ��̤��ͤ����Ǥ���褦�ˤ���
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/96>))
        ;; process (UTF-8)�� emacs
        ;; emacs ��(SJIS) process
        (setq howm-process-coding-system '(utf-8-unix . sjis-unix))
    * ��˥塼�Ρ�> �ġפ� RET �����Ȥ�, �֡ġפ򸡺�����ΤǤʤ�,
      �б��ե������ľ�ܳ���
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/823>))
    * �ե����빽���䥤�󥹥ȡ�����ˤĤ���
      * �����¸���ѿ��� howm-lang-{en,ja}.el ��ʬΥ
      * configure �ο����ץ���� --with-howmdir.
        thx > �ܾ�����
        * *.el �� *.elc �Ϥ����إ��󥹥ȡ��뤵���
        * lispdir �Υǥե���Ȥ�, ��/site-lisp/howm ���� ��/site-lisp ���ѹ�
      * �����˥塼�ƥ�ץ졼�ȤΥ��󥹥ȡ���ˡ���ѹ�
        thx > �ܾ�����, ��ë����
        ((<ref|URL:http://lists.sourceforge.jp/mailman/archives/macemacsjp-users/2005-November/000756.html>))
        ((<ref|URL:http://lists.sourceforge.jp/mailman/archives/macemacsjp-users/2005-November/000760.html>))
        * �����, /usr/local/share/howm/{en,ja}/0000-00-00-000000.howm
          ���֤���, ��� howm-{en,ja}-dir �Ǥ��ΰ��֤����
          * ���󥹥ȡ��뤷˺������Хѥ��ˤ��, �ȥ�֥뤬�����Ƥ���
          * ���󥹥ȡ��뤷�ʤ����, 0000-00-00-000000.howm �μ�ư���ԡ���ɬ��
        * �����, howm-menu-{en,ja}.el
          * howm ����ƻȤ��Ȥ��Τ�, ��� howm-menu-{en,ja} ���ɤ߹��ߤޤ�
            * ����ˤ���������Τ��Ҥ󤷤夯�ʤ�,
              �ֻ��Ѹ���ͤ��˴��פȤ������ٹ���ͤ����ޤ�.
              �⤷ɬ�פ��ä��餪�Τ餻��������.
              (���ɤ��������Х��Ȥʤ�Ƹ����ϰ�?)
          * 0000-00-00-000000.howm �μ�ư���ԡ��ϴ��������פȤʤä��Ĥ��
          * ��ɤ����ή��
              ja/0000-00-00-000000.howm
                      ����꡼�����˺�Ԥ����� (�ºݤ� howm-mkmenu.el �Ǽ�ư��)
              howm-menu-ja.el
                      ��make install
              $lispdir/howm/howm-menu-ja.elc
                      ��howm ����ƻȤä��Ȥ������ɤ߹���Ǽ�ư����
              ~/howm/0000-00-00-000000.howm
  * fix
    * CVS ��ü emacs �� make ����ȥ��顼
      "Font-lock trying to use keywords before setting them up".
      ((<thx|URL:http://tty0.exblog.jp/2944244>))
      ((<thx|URL:http://d.hatena.ne.jp/yoshk/20060102>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/867>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/873-874n>))
      ((<thx|URL:http://d.hatena.ne.jp/clock9/20060406/1144291193>))
      ((<thx|URL:http://d.hatena.ne.jp/AllStarMoves/20060425/p3>))
      ((<thx|URL:http://d.hatena.ne.jp/katase_n/20060519>))
      ((<thx|URL:http://d.hatena.ne.jp/AllStarMoves/20060602/p4>))
    * grep ���� howm-process-coding-system �ν��������ߥ󥰤˥Х�
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/63-83n>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/94-95n>))
    * migemo-client �Υ��ץ������ɲû����ǽ��
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/9>))
        (setq howm-migemo-client-option '("-H" "::1"))
      * howm-view-grep-option ������Ȥ������줬���ˤʤ�Τ�,
        ���ޥ�ɻ�����̤γ�ĥ���Ͱ�(�Ȥꤢ�����Ƥ���). ������������?
          nil  ;; �� �ǥե����
          "���ޥ��̾"
          ("���ޥ��̾" "���ץ����" �� "���ץ����")
          �ؿ�̾  ;; �� ���ޥ�ɤΤ����� elisp �δؿ���¹�
    * howm-kill-all �� .howm-keys �Хåե���ä��٤�
      ((<thx|URL:http://d.hatena.ne.jp/dasm/20060110>))
    * howm-mode-off-hook ����������֤äƤ���.
      thx > ��¼����
    * ((<howmz.el|URL:http://noir.s7.xrea.com/archives/000136.html>))
      �ǥ��顼���ФƤ�������.
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?LinuxZaurus>))
      > (TxT) ����
    * emacs20 �� M-x howm-bug-shot �����顼�ˤʤäƤ���.
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BugReportFAQ>))
      > ƨ�򤵤�

* ��꡼���� howm-1.3.2 [2005-11-04]
  * Note
    * ���, �����ʥХ���������
    * ���Ȥϱ�����ǽ�򾯡�
    * ��꡼��ͽ���� 1.3.2rc4 ��Ʊ����ΤǤ�
  * �ѹ�
    * ��˥塼�� [����] (C-c , , .) �Ǥ�ǥե���Ȥǥ����ȥ��ɽ��.
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BugReport>))
      > nobu ����
      * �����ȥ�ɽ���������ʤ���С�
        * M-x customize-variable RET howm-list-title RET
        * howm-action-lock-date-search �Υ����å���Ϥ���
        * [Save for Future Sessions]
  * fix
    * xemacs ����, ��˥塼��� [2005-10-15] �Τ褦��
      ���վ�Ǥ� RET �����顼
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/797-801n>))
    * xemacs ����, �����Хåե������ X (dired-x) �����顼
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BugReport>))
      > 797 ����
      * �Ĥ��Ǥ�, Ʊ���ե����뤬���٤�ɽ�������Τ���
    * howm-view.el �� (require 'riffle) ���ɲ�
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/782>))
    * Makefile �ʳ��μ��ǥХ��ȥ���ѥ��뤹��� M-x howm-menu �����顼
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/789-791n>))
      ((<ref|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BrokenMenu>))

* ��꡼���� howm-1.3.1 [2005-08-17]
  * xemacs �Ǥ䤱���٤��ʤäƤ����Τ���
    (xemacs �ΥС������ˤ���Τ���)
  * �Ķ��ѿ� LC_ALL, LC_CTYPE, LANG �����ꤷ�ʤ��ȥ��顼���ФƤ����Τ���
    ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/780-781n>))
  * ���� README �� ����
    ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/779>))
    * my-howm-next-hit �Υ����ɤ򹹿�
    * howm-view-search-in-result-correctly �����ꤷ�Ƥ�,
      date �Ǥιʤ���ߤϥե�����ñ��
      * ���̤ϻ���. ������ե�����ޤǤʤ�����ʤ��Ϥ�.
      * ����ե����롦������ե�����ʤɤ�������.
      * �ֻ����Υ������פȤ��Ǥä������褦���Ȥ�פ��ޤ�����,
        ��ʬ�ξ���Ĺ���ʤꤹ�������Ω���ʤ����ʤΤ�, ���ޤ���.
        ���ո�������Ф�ʹ������������.
  * ������, ����Ʊ��̾���⤤������ɽ��
    ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/779>))
      (setq howm-view-summary-omit-same-name nil)
  * ���Ȥϱ�����ǽ�򾯡�
  * ��꡼��ͽ���� 1.3.1rc1 ��Ʊ����ΤǤ�

* ��꡼���� howm-1.3.0 [2005-08-02]
  * Note
    * �ܶ�
      * come-from ������ɤ� alias
      * M-x customize �б� ([Applications] �� [Howm])
        * ���� README ��((<�������ޥ���>))�Ϥ����������ޤ���.
      * ��������
      * �������Υ����ȥ�ɽ��
      * ������Ʊ���ե�����̾�򤯤��֤�ɽ�����ʤ�
      * ��ư����
      * ��˥塼�˺Ƕ�Υ��������������������
      * ��˥塼�� [����] [����] [����] [����] ���ɲ�
        * ���Ǥ� howm ��ȤäƤ������,
          make install ���Ƥ⾡��ˤ��ɲä���ޤ���.
          ��˥塼��ʬ���Խ����뤫,
          ja/0000-00-00-000000.howm ��ʬ�ǥ��ԡ����뤫���Ƥ�������.
    * �ǥե���Ȥ��ѹ����ޤ���. �ᤷ������� .emacs �ʤɤˢ���񤤤Ƥ�������.
        ;; �����ȥ�ɽ���Ͼ������
        (setq howm-list-title nil)
        ;; ��������
        (setq howm-history-limit 0) ;; ���������Ͽ���ʤ�
        (setq howm-history-unique nil)  ;; �������򤫤��ʣ��������ʤ�
        ;; grep -E/-F �Ǥʤ� egrep/fgrep
        (setq howm-view-grep-command "egrep")
        (setq howm-view-fgrep-command "fgrep")
        (setq howm-view-grep-extended-option nil)
        (setq howm-view-grep-fixed-option nil)
        (setq howm-view-grep-file-stdin-option nil)  ;; �ѥ�����ϰ������Ϥ�
        ;; howm-template ���ؿ����ä��Ȥ���, universal-argument ��
        ;; �����ˤ��Ƥ����Ĥ�Ƥ�
        (setq howm-template-receive-buffer nil)
        ;; �������� RET �ǳ����Ȥ�, ���ƥХåե��Υ���������֤��ݤ��ʤ�
        (setq howm-view-summary-keep-cursor nil)
    * �ƥ��Ȥˤ����Ϥ�����������, �����Ƥ���������Ƚ�����ޤ�.
        ;; (������ǽ)
        ;; ��ե�����ʣ�����ΤȤ���, �ʤ��������
        ;; �ե�����ñ�̤���ʤ����ñ�̤�.
        ;; ������, date �Ǥιʤ���ߤϥե�����ñ�̤Τޤ�.
        (setq howm-view-search-in-result-correctly t)
    * �����������ѹ� (riffle.el)
    * ��꡼��ͽ���� howm-1.3.0rc5 ����Ȥ�Ʊ���Ǥ�.
  * �����ѹ�
    * howm-template ���ͤ��ؿ����ä��Ȥ���,
      ��universal-argument ��((*ľ���ΥХåե�*))�פ�����ˤ��Ƥ����Ĥ�Ƥ�
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?Comment>))
      * ������
          ;; snap.el �ǤΥ�󥯤������
          (setq howm-template #'my-howm-template)
          (defun my-howm-template (which buf) ;; C-u 3 C-c , c �ʤ� which = 3
            (let ((snap (with-current-buffer buf
                          (or (snap-record-string) ""))))
              (format "= %%title%%cursor\n%%date\n%s\n\n" snap)))
      * ����ȸߴ����ᤷ������С�
          ;; howm-template ���ؿ����ä��Ȥ���, universal-argument ��
          ;; �����ˤ��Ƥ����Ĥ�Ƥ�
          (setq howm-template-receive-buffer nil)
    * ��˥塼������Υ�ޥ����ľá����, á����μ�ư��¸�ˤĤ��ơ�
      * ���Ȥ� howm-action-lock-forward-save-buffer �� non-nil �Ǥ�,
        á�������餹�Ǥˡֳ����Хåե��� modified�פ��ä��Ȥ���
        ��¸���ʤ�
    * howm-todo-menu-types �Υǥե���Ȥ� "." ���ɲ�
    * �ǥե����������ѹ�
      * egrep/fgrep �Ǥʤ� grep -E/-F ������ǥե���Ȥ�.
        �ѿ� howm-view-fgrep-command �Ͼ����ѻߤ��뤫��.
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/670>))
      * grep �ؤ�ɸ�����Ϥǥѥ�������Ϥ�
      * {��|�Ƕ�|����}�������˥ǥե���Ȥǥ����ȥ�ɽ��
  * ������ǽ�θ����� (�� �ϡ֤��������)
    * 1.1.1.* ��������
      * howm-view-before-open-hook
      * ��˥塼�� todo �˽��٤�ɽ����
        ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/505>))
          (setq howm-menu-todo-priority-format "(%8.1f)")
      * �ǥХå����ѿ� howm-call-process-last-command
      * (setq howm-message-time t) �����, ���������פ������֤�ɽ��
    * 1.2 ����
      * come-from ������ɤ� alias �� �� ((<����񤳤�>))
        ((<ref|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?CompoundComeFrom>))
      * ��˥塼
        * ��˥塼�ˡ�%recent�פ��%random�� ��
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/242>))
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/273>))
        * ��˥塼����ѿ���ؿ����ͤ�ɽ��
      * ����
        * ������ˡ�ˡ�random�פ��ɲ�
          ((<ref|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?OldMemo>))
        * ����ɽ����ιԿ�����
          ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?Comment>))
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/724>))
            (setq howm-view-summary-window-size 10)
        * �֥����ȥ�פ�����ɽ����, ��ǽ���Ȥ��ѹ���ǽ
            (setq howm-list-title-regexp "^[*=] [^ ]")  ;; ����ɽ��
            (setq howm-menu-recent-regexp "^[*=] [^ ]")  ;; ��˥塼��� %recent
        * �������� RET �ǳ����Ȥ�, ���ƥХåե��Υ���������֤��ݤ�
            (setq howm-view-summary-keep-cursor t) ;; �� �ǥե���Ȥˤ��ޤ���
          * ����äȼ����ʤ�. �Զ��Ф��鶵���Ƥ�������.
        * ñ�������˥ޥå�������Τϸ�ޤ路
            (setq howm-list-prefer-word t)
          * ��euc�פ򸡺�������, ��euclid�פ��takeuchi�פ���,
            ñ���euc�פ˥ޥå�������Τ���ɽ��
          * ������, ��<<< euclid�פϤ�������餺�Ƥäڤ��
      * �������
        * ���޳����Ƥ�ե�����˿��������ɲ�: M-x howm-create-here
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/293>))
        * �������Υե�����̾���ư�ǤĤ���: M-x howm-create-interactively
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/367>))
          * ����ʴ����Ǥ��礦��? > 367 ����
      * M-x howm-narrow-to-memo, M-x howm-toggle-narrow
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/293>))
        * �Ĥ��Ǥ�, M-x howm-toggle-narrow ��, �������������ȥ���
        * ���򳫤����Ȥ���ưŪ�� narrow ��
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/301>))
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/542>))
            (add-hook 'howm-view-open-hook 'howm-auto-narrow)
            (add-hook 'howm-create-hook 'howm-auto-narrow) ;; �ɲ�[2005-01-07]
      * ��ޥ�����Ρ�cancel�פ�㤦���դ˥������ޥ���
        (thx > NARA Shinsuke ����)
          (setq howm-reminder-cancel-string "give up")
    * 1.2.1 ����
      * M-x howm-history �Ǹ�������. �����򤫤� RET �����٤�. ��
        * ((<RandomNote|URL:http://ninjinix.x0.com/rn/index.rb?AboutPage.txt>))
          ��
          ((<namapo|URL:http://tiki.is.os-omicron.org/tiki.cgi?c=v&p=namapo>))
          �˿�ȯ����ơ�
        * ��Ͽ��, �ָ���ʸ���󸡺��סֹʤ���߸����ס֥�󥯡פΤߤˤ��Ƥߤ�
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/496>))
        * ��ˤ�äơ֥�˥塼��ɽ���פ⤷��������,
          �֥�˥塼�򥭥�å���פȤη�͹礤��.
        * 1.2.2 ����Ϻ��絭Ͽ���������
        * 1.3.0 ����Ͻ�ʣ�����
      * ��ե�����ʣ�����ΤȤ�, �����塦�ǽ顦�Ǹ�Υ��ذ�ư
        (narrowing ���θ)
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/377>))
        * M-x howm-previous-memo
        * M-x howm-next-memo
        * M-x howm-first-memo
        * M-x howm-last-memo
      * �����ΤȤ�������ư narrow.
        ������, ��>>> foo.howm�פ� foo.howm ��������Ȥ��� narrow �ˤ��ʤ�.
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/377>))
          ;; ���ǥե���Ȥ�ư����������ʤ������������
          (setq howm-auto-narrow
                ;; ���˽񤤤����ޥ�ɤǤ��� narrow
                '(howm-list-all howm-list-recent
                  howm-list-grep howm-list-grep-fixed howm-list-migemo
                  howm-list-related howm-list-around
                  howm-keyword-search)) ;; ����� come-from ��󥯡�goto ���
      * C-c , T (howm-insert-dtime) �� [2004-09-01 23:26] �Ȥ�����
        ((<ref|URL:http://mibai.tec.u-ryukyu.ac.jp/~oshiro/Programs/elisp/get-date.el>))
        ((<ref|URL:http://www.gentei.org/~yuuji/software/euc/instamp.el>))
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/399>))
    * 1.2.2 ����
      * ��ư���� ��
      * ��˥塼�ˡ�%here%(howm-menu-search "�ۤ�")�פȽ񤱤�,
        �֤ۤ��פθ�����̤������� ��
        (thx > Konstantin Levinski (kostya@pmail.ntu.edu.sg))
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/605>))
      * �������ޤ��
        * ��ե�����ʣ�����ΤȤ�, ������������Ƭ���ɲäȤ������� ��
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/535>))
            (setq howm-prepend t)
        * �֤ۤ��פ򸡺����ư����������֤��鿷���������, �����ȥ��֤ۤ��פ�
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/573>))
            (setq howm-title-from-search t)
        * �ƥ����Ȥ����򤷤Ƥ���ֿ������� �� ���Υƥ����Ȥ�ư����
          ((<thx|URL:http://hpcgi1.nifty.com/spen/index.cgi?ZaurusSL-C3000%2F%BD%E9%B4%FC%C0%DF%C4%EA%2Femacs%A4%BD%A4%CE%A3%B4#i0>))
            ;; transient-mark-mode �Ǥʤ���, ���������̵�뤵���
            (setq howm-content-from-region t)
        * howm-create-here ��, ̵ͭ����蘆���ָ���������Ԥˡ׿���������
          ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/542>))
            (setq howm-create-here-just t)
      * ��������Υ����ȴ��� numerical-name ���ɲ�
      * ��ȯ��
        * C-u M-x howm-bug-report �Ǵ�Ϣ�ѿ��ΰ���
        * M-x howm-elp ��, �ץ��ե����� elp �ν���
  * ����¾�β���
    * M-x customize ���б� ([Applications] �� [Howm])
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?RoadMap>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/668>))
    * �����Хåե���, Ʊ���ե�����̾�򤯤��֤�ɽ�����ʤ�
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/754>))
      * �Ĥ��Ǥ˿���Ĥ��Ƥߤ�. �ɤʤ�����äȤޤ����ۿ��򤯤�����.
        (M-x customize-group RET howm-faces RET ����,
        howm-view-name-face �� howm-view-empty-face)
      * (����) ��Ϣ�����¸��ǽ
        * TAB��ALT-TAB �� �������Υե������
        * u �� ��ĤΥ��ϰ�Ԥ�����
        * @ �� Ϣ��ɽ�������Ʊ�����ϰ�ĤˤޤȤޤ�
    * ������ T �� �����ȥ�ɽ����֥ȥ����
      * 1.2.1 �α�����ǽ�������
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/427>))
    * ��˥塼��ΰ����Ǥ�, ��Ƭ�Ǥʤ��Ƥ� RET �ǥ�����
    * ��ޥ����ľá���ǡ��׻��˳������Хåե��פ�ư���Ĥ���
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/705>))
        ;; á�����ư���Ĥ���. undo �Ǥ��ʤ��ʤ뤫�餪�����ᤷ�ޤ���.
        (setq howm-action-lock-forward-kill-buffer t)
    * howm-menu-lang �Υǥե���Ȥ� locale �򸫤Ʒ���
    * ext/howm2 �ǡ�come-from ������ɤ� alias�פ򥵥ݡ���
      * ��������餺��äĤ��Ż�.
        �ĤȤ�����, ������äĤ��Ż�������, �⤦���ɤǤ���.
  * ��������
    * cl �ѥå���������δؿ��� howm-cl.el ��ʬΥ.
      ���Ĥ����礬�Ϥ�����������褦��
    * make ���ηٹ�֡� not known to be defined�פ�����
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1111816102/485>))
    * riffle.el �λ��ͤ��ѹ�(gfunc.el ��Ȥ�). �桼�����ˤϱƶ��ʤ��Ĥ��.
      ((<howmoney|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?howmoney>))
      ��������礦�֤Ȼפ�������ɡ�
  * �Х�����
    * ������ǥ��顼
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/706>))
      * ���顼�ǥ����ץ쥤�Ǥʤ��Ȥ���, �����Τ�����ȿžɽ������,
        ����ʳ��ξ���Ϥʤ�
    * %reminder �ζ��ڤ����������
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/703>))
    * �������� T �ǥ����ȥ�ɽ�������Ȥ�, ̵�����ȥ�ʬ��¿��ɽ������Ƥ���
      * make test ���� C-c , s top [RET] T ��ȯ��
    * win �ǡ֡�\.foo\�ġפʤɤ򸡺��оݤȤ��ʤ��褦��
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/746>))
    * howm-message-time �򥻥åȤ��Ƥ��No match�ץ�å������򱣤��ʤ��褦��
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/751>))
    * ��˥塼�Υ�ޥ������� come-from ������ɤ�
      �������Ĥ��ʤ��ʤäƤ���.
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/732>))

* ������ǽ (experimental)
  * 1.1.1.* ��������
    * �����������ɤ��ɤ߽񤭤� howm ��
      * ((<GNU global|URL:http://www.tamacom.com/global-j.html>))
        (((<��|URL:http://www.tamacom.com/tour/lang/ruby/S/21.html>)))
        ��ɤ��� on the fly �Ǥᤶ����
      * �ޤ���ȯ��. ̣������ˤϡ�
        * �ѿ� howm-configuration-for-major-mode ������
          * major-mode �˱�����, come-from ������ν񼰤��Ѥ���
          * howm-misc.el �Υ����Ȼ���
        * M-x howm-open-directory-independently ���� ~/elisp/howm �ʤɤ�����
      * ���ΤϷ�� grep �ʤ������, ���ޤ긭��ư�����Ԥ��ƤϤ����ʤ�
        * elisp, tex �Ǥ�����������, ruby ����Ȥ���Τˤʤ餺.
          * �� elisp �δؿ�̾�� tex �Υ�٥�����Ū�˰��. ruby ����.
  * 1.2
    * �����������ƥХåե��˥ե��������Τ�ɽ��������
        (setq howm-view-preview-narrow nil)
      * Ϣ����Ͻ���ɤ���(�����ڤ���ϰϤΤ�)
      * howm-configuration-for-major-mode �ʳ��ǻȤ����̤�, �ޤ��ʤ��Ǥ��礦
    * ��ޥ����
      * ��ޥ�����Υ������ޥ���
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/296>))
          ;; ���������Υ�ޥ������*�פ����������:
          ;; ��[2004-07-11]* �ۤ��פ�, �������ޤǾ徺��, ���Τ��Ȳ���.
          ;; (���� = - |�٤� / ͱͽ����|. ͱͽ�����Υǥե���Ȥ� 3)
          ;; 1. ���ٴؿ������ (�٤��ͱͽ����(�ȥ����ƥ�)�򿩤äƽ��٤��Ǥ�)
          ;;    �٤�: ���������麣���ޤǤ�����. �ޤ��ʤ�ޥ��ʥ�.
          ;;    ͱͽ: ��[2004-07-11]*8�פʤ� 8. ��[2004-07-11]*�פ����ʤ� nil.
          ;;    ����: �礭���ۤɾ�. �ֳн�פʤ������ 0 ������ 1 ���ĸ���.
          ;;    (�����ƥ�: �դĤ��ϻȤ�ʤ����ɤĤ��Ǥ�. howm-backend.el ����)
          (defun my-priority (late lazy item)
            (let ((r (howm-todo-relative-late late lazy 3)))
              ;; r = late / lazy. ̵������� lazy = 3.
              (- (abs r))))
          ;; 2. face �����
          (defface my-face '((t (:foreground "cyan"))) "my face")
          (setq my-face 'my-face)
          ;; 3. ����, ���ٴؿ�, face ����Ͽ.
          ;; �Ĥ�ΰ�����Ĥ�, ��ͽ��ɽ��ɽ�����뤫�ס�todo �ꥹ�Ȥ�ɽ�����뤫��.
          (howm-define-reminder "*" #'my-priority 'my-face nil t)
        * ����: ��¸�ν��ٴؿ��Υ���դ�
          ((<UNIX USER ��ε���|URL:http://howm.sourceforge.jp/uu/#label:11>))
          �˽ФƤޤ�
        * �Х�
          * �����ε���Ϥ������� (����ɽ�� [��] ������̤ʰ�̣����ĵ���ϡ�)
          * ��[2004-07-11]- �ۤ��פ����-�׾�� RET ���ơ�*�פ����Ϥ���ȥ��顼
        * �Ȥꤢ����á����. ����ʤ�Ǥ�����Ǥ��礦��?
      * �����񤱤�
        ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/141>))
        ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/148>))
        ((<thx|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/597>))
          [2004-07-16 10:15]@ ���
        * ���ΤȤ����񤱤����. ���̤ϲ���ʤ�.
        * ���夳�������˳�ĥ���뤫��̤��
    * ���շ���
      * ���վ�� RET��2 ���Ƥ����
          -, + �� ����, ����
          (, ) �� ����, ����
          {, } �� ����, ���
          [, ] �� ��ǯ, ��ǯ
        * C-u 20 - �� 20����
        * �ҥåȤ��ʤ��ä��餽��������դ���õ��
            (setq howm-date-forward-ymd-limit 90)  ;; 90����� give up
        * ��äȤޤ��ʥ�������ʤ����ͤ�
      * �������ϡ�C-c , d�פ����Ȥ���ư��򤵤�˾�������
          (setq howm-insert-date-pass-through t)
        * ���ե��ޥ�ɤˤĤ��Ƥϸ���Ʊ��
        * ���ե��ޥ�ɤ���ʤ��Ȥ���, ��������ȴ����.
          C-c , d hoge �Ȥ� C-c , d C-a �Ȥ���Ф狼��ޤ�.
        * ���ޤä�. ��[2004-05-21]+�פȤ����Ϥ��褦�Ȥ���ȤȤޤɤ�.
          ��+ RET�פǡ�+�������פˤϤ��Ƥߤ����ɡ�
    * ����¾
      * ���ޤ�
          (setq howm-congrats-command '("play" "~/sound/level.wav"))
  * 1.2.1
    * Major
      * ��˥塼�ˡ�%reminder�פȽ񤯤�, ͽ��� todo ���������
        * ͽ���@�פ�,
          howm-menu-schedule-days-before ��������
          howm-menu-schedule-days ����ޤǤ���Ƭ��ɽ��
          * [2004-12-03]@5 �ʤɤȽ񤯤�, ��5 ���֡פΰ�
            (������ޤ�Τǡ�12��3������12��7���ޤǡ�).
            ��������ä���Τ��������ͱͽ�����.
            ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/516>))
        * ���ڡ�!�פ�, �������������ϰϤޤǤʤ����ɽ��
        * �����겼�Ͻ���ɤ���
      * howm2 �κ��ľ��? (ext/howmkara)
        * ɬ�פˤ��ޤ��ƤǤä�����. ̾����Ƥ��Ȥ�.
          * ɬ�פ��������줿����, �ޤ����֤���. ï���ɤ��ˤ����Ƥ����С�
        * ��ǽ���ಽ. �������������Ϥޤ�.
          * magic string ������ФäƤ�ΤϤ�������󤱤ɡ�
        * �����ե������ʬ�䤹�� ext/hsplit.rb ��񤤤�����,
          ����Ϥ���˼�ȴ��
    * Minor
      * [2004-09-01 23:26]@ �Ȥ��� tag2plan ��ɽ��
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/398>))
        * ɽ�������äƤ���. �������ᤷ�ޤ���.
          ���ν񼰤��ܵ��ǥ��ݡ��Ȥ��뤫̤��ʤΤ�.
      * hcal.rb �Ρ�[2004-09-02]?���б�(��ʬ���Ѥ��ΤФ��Τ�)
        ((<ref|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?TangledToDo>))
      * M-x howm-return-to-list �� ����ɽ�������
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/377>))
        * �Ȥ�ޤ�Ķ���Ǥä�����. ȿ���˱����Ƥޤ��ͤ��褦.
        * ����ɽ���ˤ���������뤳�Ȥʤ�, �����μ����ܤ�ľ�ܳ���:
            (defun my-howm-next-hit (n)
              (interactive "p")
              (let ((buf (save-window-excursion
                           (howm-return-to-list)
                           (when (not (eq major-mode 'howm-view-summary-mode))
                             (error "Sorry. This case is not cared."))
                           (forward-line n)
                           (let ((howm-view-summary-keep-cursor nil))
                             (howm-view-summary-open))
                           (current-buffer))))
                (switch-to-buffer buf)))
            (defun my-howm-previous-hit (n)
              (interactive "p")
              (my-howm-next-hit (- n)))
  * 1.2.2
    * ����
      * �Хåե�����: M-x howm-list-buffers
        * ��������ʤ���ߤʤɤ򤹤��, �����Хåե� occur�������Τ��Ȥ��Ǥ���
        * C-u ��Ĥ����, �����Хåե��ޤǤ��٤�
        * ��������Хåե�̾������
            (setq howm-list-buffers-exclude
                  '("*Messages*" ".howm-keys" ".howm-history"))
      * ���Хåե��κǶ�ޡ�������: M-x howm-list-mark-ring
    * �ü�ե����
      * namazu folder ���
        * �����ɻ�����
        * +from: �ʤɤ�̤�б�
        * ľ�ܸ�������ˤ� M-x howm-search-namazu
      * rot13 folder/page ���
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/580>))
        * ���켫�ΤϤ�ͷ�Ӥ�����, �֤դĤ��Ǥʤ��ڡ����פ������Ȥ���
        * rot13:xxx �Хåե���, C-c C-c �ǡ�rot13 ������¸��
          * rot13 �ʥե�����򳫤��ˤ�, M-x yarot13-find-file
      * howm-search-path ��, �̾�Ρ֥ǥ��쥯�ȥ�װʳ���񤱤�
          ;; namazu folder �� rot13 folder �򸡺��оݤ��ɲ�
          ;; (M-x howm-toggle-search-other-dir ��ͭ����̵�����ڤ꤫��)
          (let* ((nd "~/PATH/NMZ/Mail") ;; namazu ����ǥå����Τ���ǥ��쥯�ȥ�
                 (rd "~/g/r13") ;; ���Υǥ��쥯�ȥ�ʲ��Υե������ rot13 �����
                 (nf (howm-make-folder:namazu nd))
                 (rf (howm-make-folder:rot13dir rd)))
            (setq howm-search-path (list nf rf)))
          (howm-toggle-search-other-dir 1) ;; 0 �ʤ������֤ϡ�̵����
    * [2004-12-13]_3 ��ͱͽ������3�פΰ�̣�� 1 ���餷��
      * ���ޤޤǤ�, ��ά�� 0 �� 1 ��Ʊ����̣�ˤʤäƤ���
      * �����쵤����������, ��äȤޤ���˼������ʤ�������
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/522>))
    * ext/hcal.rb �� iCalendar ���Ϥ��ɲ�, �Ĥκ���¤ΤȤä��������
  * 1.3.0
    * ��ե�����ʣ�����ΤȤ���, �ʤ��������ե�����ñ�̤���ʤ����ñ�̤�.
      ������, date �Ǥιʤ���ߤϥե�����ñ�̤Τޤ�.
        (setq howm-view-search-in-result-correctly t)
    * ��˥塼�� %reminder ��˻��ڤ�
        (setq howm-menu-reminder-separators
              '(
                (-1  . "����������������������Ķ�ᨬ������������")
                (0   . "��������������ͽ�ꢭ��������������")
                (3   . "����������������ä��袭��3����ޤǨ�������������")
                (nil . "��������������todo����������������") ;ͽ���todo�ζ�
                ))
      * �Τξ��ٹ���[2005-05-17]_ ���������פ�, ���Τ����ѻ�
    * howm ��Ϣ�����Хåե��˶��̤ο�����
        ;; �֤ۤ��פȡ�[�դ�]�פ��忧
        ;; ������ˡ�ξܺ٤�, �ѿ� font-lock-keywords �Υإ�פ򻲾�
        ;; ��face �ΰ����� M-x list-faces-display
        (setq howm-user-font-lock-keywords
          '(
            ("�ۤ�" . (0 'highlight prepend))
            ("\\[�դ�\\]" . (0 'font-lock-doc-face prepend))
            ))
      * todo ��ͽ��ο��櫓�ˤǤ�ȤäƤϤ���������.
        ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/42>))
        ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?Idea>))
        > taku ����
    * ���������դȤ���, [2005-05-19] �Ǥʤ� 2005-05-19 ��ϥ��饤��
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/691>))
        (setq howm-highlight-date-regexp-format
              (regexp-quote howm-date-format))
      * ͽ��� [2005-05-19 20:54]@ �Τ褦�˽񤯿͸���
        * ��������äƤ���褦��,
          �֤��ν񼰤�ۤ�Ȥ˥��ݡ��Ȥ��뤫��̤��פǤ�.
          ��[2005-05-19]@ 20:54 �ġפ�����̵��.
          ((<ref|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?DateFormat>))
    * [2005-05-15 21:37]@ �Τ褦�ʽ񼰤�ͽ���, �����˥�����
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/683>))
        (setq howm-schedule-sort-by-time t)
      * �ƥ��Ȥ�������Ǥ� > 683 ����.
        ������ʾ���ʬ���ᤷ����� OK ��������Ƥ�����������,
        �ǥե���Ȥˤ��褦����.
    * ��ʸ���������ƥ� ((<Rast|URL:http://www.netlab.jp/rast/index.html.ja>))
      ��̣��
      * rast-0.1.1 �ǻ
      * �������ޥ�ɤȤ��� ext/howm-rast-search.rb �� ext/howm-rast-register.rb
        ��ɬ��
      * ����ɽ���θ����ˤ� rast ��Ȥ�ʤ� (���������٤��ʤ�)
        * ���Τ���, ��˥塼��ͽ��ɽ�� todo �ꥹ�Ȥ��٤�
      * �Ȥ���
        * rast �ǡ����١���������äƹ��ۤ��Ƥ���
        * �ɤ��餫����
          * howm-directory �� rast �Ǹ���������
              ;; rast �ǡ����١����ΰ��֤�, ��⤬�ºݤˤ���ǥ��쥯�ȥ�Ȥ����
              (setq howm-directory
                    (howm-make-folder:rast "/tmp/rastdb"
                                           (expand-file-name "~/howm/")))
              ;; ��˥塼�ե�������ۤ˻��ꤹ��ɬ�פ���
              (setq howm-menu-file
                    (expand-file-name "~/howm/0000-00-00-000000.howm"))
              ;; ��˾�ߤʤ�, �ե�������¸���˥ǡ����١�����ư����
              ;; (�������Ԥ����Ȥ��Τ��Ȥʤ󤫤Ϲͤ��Ƥʤ�)
              ;(setq howm-rast-register-command
              ;      (expand-file-name "~/elisp/howm/ext/howm-rast-register.rb"))
              ;(add-hook 'howm-after-save-hook
              ;  (lambda () (howm-rast-register-current-buffer "/tmp/rastdb")))
          * howm-directory �˲ä���, �̤Τɤ����� rast �Ǹ���������
              ;; rast �ǡ����١����ΰ���
              (setq howm-search-path
                (list (howm-make-folder:rast "/tmp/rastdb")))
              ;; �� = howm-search-path ��õ��
              (howm-toggle-search-other-dir 1)
        * ξ�Զ��̤ǡ�
            (setq howm-rast-search-command
                  (expand-file-name "~/elisp/howm/ext/howm-rast-search.rb"))
  * 1.3.1
    * �����ȥ뤬���ΤȤ�����ʸ�ΰ���ܤ򥿥��ȥ��. �Ť�������.
        ;; �����ȥ��󤬤���˥ޥå������Ȥ���, �ޥå����ʤ��ǽ�ιԤ�
        ;; ���إ����ȥ�Ȥ���
        (setq howm-view-title-skip-regexp
              "\\(^=? *$\\)\\|\\(^\\[[-: 0-9]+\\]\\)")
        ;; �������ꤷ�Ƥ����ʤ��Ȣ��ϵ�ǽ���ʤ�
        (setq howm-view-search-in-result-correctly t)
    * �������֥Х��λ�Ŧ�μ��װ�
      * make test �� emacs ��ư
      * �Х���ȯ�ɤ�����
        * ȯ�ɤ��ʤ����, ��ʬ�� .emacs �����Ϣ�������ʤȤ�����
          sample/dot.emacs �إ��ԡ�����, �⤦���� make test
      * ȯ�ɤ����餹������ M-x howm-bug-shot
        * �С������䥹���꡼�󥷥�åȤʤɤ�ɽ������ޤ�
      * �����Ȥ�ä��� 2ch ��Ž��
  * 1.3.2
    * M-x howm-occur ��, �����ȥХåե��򸡺�
    * grep ���ѻ��� coding system ����
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/784>))
        (setq howm-process-coding-system 'euc-japan-unix)
    * �����Хåե������ X (dired-x) ����, ����������б��ե�����̾���֤�
      ((<thx|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?BugReport>))
      > 797 ����
        (setq howm-view-dired-keep-cursor t)
  * 1.3.3
    * M-x howm-remember ��
      ((<remember-mode|URL:http://www.emacswiki.org/cgi-bin/emacs-en/RememberMode>))
      ��ɤ�
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/24-25n>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/61>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/72-75n>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/92-93n>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1141892764/99>))
      * �񤭹����ѥ�����ɥ����ݥåץ��åפ���Τǡ�
        * �٤��äȽ񤤤� C-c C-c �� ������¸��, �ݥåץ��åפ�ä�
        * ����󥻥뤹��ʤ� C-c C-k
      * �Ҥ�äȤ���, �֤ष�����ä���ǥե���Ȥˤ�����?
      * ����ܤ� howm-template �� %title ��, �Ĥ�� %cursor ��,
        �Ȥ��������
          (setq howm-remember-first-line-to-title t)
      * �����������򤹤٤� howm-remember �ˤ���ˤϡ�
          ;; howm-create �򤹤٤� howm-remember �ˤ��꤫����
          (defadvice howm-create (around remember activate)
            (if (interactive-p)
                (howm-remember)
              ad-do-it))
          (setcdr (assoc "[����]" howm-menu-command-table-ja)
                  '(howm-remember current))  ;; [2006-05-15] ����
        * ��˥塼��� c �򲡤����Ȥ�, �֥�˥塼������ɽ�����Ƥ����Хåե���
          ��Ф��������ߤʤ�, ��current�פ��previous�פ�ľ���Ƥ�������
    * ���ƥ����̤� todo list
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/885>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/890>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/909>))
      ((<thx|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/919>))
      * ��ʬ��פ���˾�ϤĤäѤͤƤ����������, �����ϵ��ޤ���˵����������Τ�
        ���. ������ǽ�ˤ��Ƥ������ɤ�����̤��.
      * ��˥塼�ˤ����񤯤�, ��foo�ס�bar�ס�baz�פ�ޤ� todo ��
        ʬ�ष��ɽ��
          %here%(howm-menu-categorized-reminder ("foo" "bar" "baz"))
        * ���ʤߤ�, %here% �Ǥϥ������Ȥ����פǤ�
      * �����, �ƹԤΡ�foo�ס�bar�ס�baz�פ�ä��������
          %here%(howm-menu-categorized-reminder ("foo" "bar" "baz") nil t)
      * ��misc.�פ���ɽ���ˤ��������
          %here%(howm-menu-categorized-reminder ("foo" "bar" "baz") nil nil t)
    * �����Хåե��Υޥå����Ƥκ��˥����ȥ��ɽ��.
      ���ʤߤ˽���Τ�, �֥ޥå����ƤΤ����˥����ȥ��ɽ����.
      ((<thx|URL:http://lists.sourceforge.jp/mailman/archives/howm-eng/2006/000025.html>)) > Highfly ����
        (setq howm-view-list-title-type 2) ;; �ޥå����Ƥκ��˥����ȥ��ɽ��
        (setq howm-view-summary-format "") ;; �ե�����̾��ä��������
    * C-c , M �ǡ֥ե�����̾����ꤷ�ƥ��򳫤���
      ((<thx|URL:http://lists.sourceforge.jp/mailman/archives/howm-eng/2005/000010.html>)) > Eduardo Ochs ����
    * %reminder ��λ��ڤ�ˤĤ���
      * 1.2.1 ����α�����ǽ���ä������ѻ�
        * ���Τɤ����˲��Τ褦�˽񤤤Ƥ�����, �����ΰ��֤ˤ��줬ɽ�������
            [2004-11-01]_0 ��������������������������
          * ���դϥ��ߡ�. 0 �ϡֺ��� - 0 ���פΰ���.
          * (��˥塼����ʤ�) todo �����ˤ�ФƤ��ޤ���������
      * �������ѿ� howm-menu-reminder-separators ��ȤäƤ�������
      * 1.3.0 �α�����ǽ��������Ƥ����Ȥ���

* ������ȴ��� (((<URL:OLD.rd>)) ����)
  * [2005-05-02] 1.2.2 �Хå�������ڤ�Υ��. gfunc.el
  * [2004-08-24] 1.2 ��α��~�פθ�����. howm.el, riffle.el
  * [2004-05-06] 1.1.2 make test
  * [2004-02-27] ((<"2ch howm ���� 2"|URL:http://pc8.2ch.net/test/read.cgi/unix/1077881095/>))
  * [2004-02-21] 1.1.1 �ֱ�����ǽ�����٤�Ƴ��
  * [2004-01-25] ((<"sf.jp"|URL:http://howm.sourceforge.jp/>)) �ذ�ư
  * [2005-01-08] ((<"UNIX USER 2004.2"|URL:http://www.unixuser.jp/magazine/2004/200402.html>))
  * [2003-12-27] ((<howm wiki|URL:http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi>))
  * [2003-11-22] 1.1 �ǥե���Ȥ��ѹ�
    (��󥯡����ա���ޥ�����ν�, �����ե�����, ��˥塼����ΰ��)
  * [2003-10-27] 1.0.4.2 �Ť��ʤ�Х�����. �褯����ʤΤ�ư���Ƥ��ʤ���
  * [2003-10-02] 1.0.4 ���� viewer, ��˥塼�β�궯��
  * [2003-09-23] �֥ƥ����ǡפ�Ƴ��
  * [2003-09-18] 1.0.2 HTML ��������ץ� howm2
  * [2003-09-17] ((<2ch howm ����|URL:http://pc.2ch.net/test/read.cgi/unix/1063800495/>))
  * [2003-09-17] 1.0 ���ǥ��쥯�ȥ���ز�
  * [2003-09-16] 0.9.7.1 Wiki ����� [[�ۤ�]]
  * [2003-09-14] 0.9.4.1 grep æ��
  * [2003-09-09] 0.9 ruby æ��
  * [2003-08-31] 0.8.5 �����ȥ����
  * [2003-06-03] 0.8.4 ��ľ�������� hcal.rb
  * [2002-11-03] 0.8 ��˥塼, ���ٽ� todo @[2003/09/20]+
  * [2002-09-17] 0.7 1 �� 1 �ե�����, come-from ��� <<
  * [2002-09-14] 0.6 ����ѻ�(���٤Ƥϡָ�����)
  * [2002-06-10] ((<"����ȯ�� wiki ��������ꥹ��"|URL:http://www1.neweb.ne.jp/wa/yamdas/column/technique/clonelist.html>))
  * [2002-05-29] 0.1 ����

=== ���ɥ쥹

* �ǿ���: ((<URL:http://howm.sourceforge.jp/>))
* Ϣ����: email ���ɥ쥹�ϥ������ե�������Ƭ�򻲾Ȥ�������

=end