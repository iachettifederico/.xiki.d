;;; Compiled snippets and support files for `html-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
		     '(("doctype" "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n                      \"http://www.w3.org/TR/html4/strict.dtd\">\n" "HTML 4.01 Strict" nil nil nil nil nil "944F1410-188C-4D70-8340-CECAA56FC7F2")
		       ("doctype" "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n                      \"http://www.w3.org/TR/html4/loose.dtd\">\n" "HTML 4.01 Transitional" nil nil nil nil nil "B2AAEE56-42D8-42C3-8F67-865473F50E8D")
		       ("doctype" "<!DOCTYPE html>\n" "HTML 5" nil nil nil nil nil "08E4F47C-A570-4F9B-A6AE-DCAC0D2E2420")
		       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"\n                      \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n" "XHTML 1.0 Frameset" nil nil nil nil nil "9ED6ABBE-A802-11D9-BFC8-000D93C8BE28")
		       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\n                      \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n" "XHTML 1.0 Strict" nil nil nil nil nil "C8B83564-A802-11D9-BFC8-000D93C8BE28")
		       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n                      \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n" "XHTML 1.0 Transitional" nil nil nil nil nil "7D8C2F74-A802-11D9-BFC8-000D93C8BE28")
		       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\n                      \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\n" "XHTML 1.1" nil nil nil nil nil "5CE8FC6E-A802-11D9-BFC8-000D93C8BE28")
		       ("head" "<head>\n  <meta charset=\"utf-8\">\n  \n  <title>${1:`(let ((case-fold-search)) (jeg2/regex-replace-all (jeg2/camelize (file-name-nondirectory (file-name-sans-extension (buffer-file-name)))) \"\\\\([a-z]\\\\)\\\\([^a-z]\\\\)\" \"\\\\1 \\\\2\"))`}</title>\n  \n  $0\n</head>" "Head" nil nil nil nil nil "9CF008C4-A086-11D9-A5A2-000D93C8BE28")
		       ("jquery" "<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/${1:2.0.3}/jquery.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>$0" "jQuery" nil nil nil nil nil nil)
		       ("link" "<link rel=\"stylesheet\" href=\"${1:stylesheets/application.css}\" type=\"text/css\" media=\"${2::$$(yas/choose-value '(\"screen\" \"print\" \"all\" \"braille\" \"embossed\" \"handheld\" \"projection\" \"speech\" \"tty\" \"tv\"))}\" charset=\"utf-8\">$0" "link" nil nil nil nil nil nil)
		       (nil "&nbsp;" "nbsp" nil nil nil nil "C-c i SPC " "73B40BAE-A295-11D9-87F7-000D93C8BE28")
		       ("script" "<script src=\"${1:javascripts/application.js}\" type=\"text/javascript\" charset=\"utf-8\"></script>$0" "script" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sun Nov  3 01:14:14 2013
