;;; Compiled snippets and support files for `html-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'html-mode
                     '(("head" "<head>\n  <meta charset=\"utf-8\">\n  \n  <title>${1:`(let ((case-fold-search)) (jeg2/regex-replace-all (jeg2/camelize (file-name-nondirectory (file-name-sans-extension (buffer-file-name)))) \"\\\\([a-z]\\\\)\\\\([^a-z]\\\\)\" \"\\\\1 \\\\2\"))`}</title>\n  \n  $0\n</head>" "Head" nil nil nil nil nil "9CF008C4-A086-11D9-A5A2-000D93C8BE28")
                       ("jquery" "<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/${1:2.0.3}/jquery.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>$0" "jQuery" nil nil nil nil nil nil)
                       ("link" "<link rel=\"stylesheet\" href=\"${1:stylesheets/application.css}\" type=\"text/css\" media=\"${2::$$(yas/choose-value '(\"screen\" \"print\" \"all\" \"braille\" \"embossed\" \"handheld\" \"projection\" \"speech\" \"tty\" \"tv\"))}\" charset=\"utf-8\">$0" "link" nil nil nil nil nil nil)
                       ("script" "<script src=\"${1:javascripts/application.js}\" type=\"text/javascript\" charset=\"utf-8\"></script>$0" "script" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Mon Nov  4 01:26:53 2013
