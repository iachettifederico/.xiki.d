;;; Compiled snippets and support files for `emacs-lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'emacs-lisp-mode
                     '(("addh" "(add-hook ${1:'${2:some}-mode-hook} $0)" "add-hook" nil nil nil nil nil nil)
                       ("auto" ";;;###autoload" "autoload" nil nil nil nil nil nil)
                       ("c" "(${1:(${2:condition})} $0)" "c" nil nil nil nil nil nil)
                       ("con" "(cond (${1:(${2:condition})} $3)$0)" "cond" nil nil nil nil nil nil)
                       ("def" "(defun ${1:fun-name} (${2:args})\n  \"${3:Documentation.}\"\n  $0)" "defun" nil nil nil nil nil nil)
                       ("fle" "(flet ((${1:f-name} (${2:args}) $3)$4) $0)" "flet" nil nil nil nil nil nil)
                       ("glosk" "(global-set-key (kbd \"${1:C-c ${2:k}}\") ${3:'${4:invocation}})$0" "global-set-key" nil nil nil nil nil nil)
                       ("int" "(interactive${1:$(if (> (length text) 0) \" \" \"\")}${1:\"${2:p}\"})$0" "interactive" nil nil nil nil nil nil)
                       ("lab" "(labels ((${1:f-name} (${2:args}) $3)$4) $0)" "labels" nil nil nil nil nil nil)
                       ("lam" "(lambda (${1:args}) $0)" "lambda" nil nil nil nil nil nil)
                       ("let*" "(let* ((${1:var} ${2:value})$3) $0)" "let*" nil nil nil nil nil nil)
                       ("let" "(let ((${1:var} ${2:value})$3) $0)" "let" nil nil nil nil nil nil)
                       ("locsk" "(local-set-key (kbd \"${1:C-c ${2:k}}\") ${3:'${4:invocation}})$0" "local-set-key" nil nil nil nil nil nil)
                       ("save" "(save-excursion $0)" "save-excursion" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Mon Nov  4 01:26:53 2013
