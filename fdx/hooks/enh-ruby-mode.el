;; ;;(rvm-activate-corresponding-ruby)

;; ;; fci-mode
;; ;; (require 'fill-column-indicator)
;; ;; (setq fci-rule-column 80)
;; ;; (fci-mode)

(require 'ruby-electric)
(electric-pair-mode t)

;; ;; Colorize symbols correctly in ruby-mode
;; (font-lock-add-keywords
;;  'ruby-mode
;;  '(("\\(\\b\\sw[_a-zA-Z0-9]*:\\)\\(?:\\s-\\|,\\|)\\|$\\)" (1 font-lock-constant-face))))

(local-unset-key (kbd "C-c C-c"))
(local-unset-key (kbd "C-;"))
(local-set-key (kbd "C-c C-c") 'xmp)
(local-set-key (kbd "C-;") 'comment-dwim)

;; ;;; Refactorings
(local-set-key (kbd "M-r l") 'fdx/refactoring/extract-let)
(local-set-key (kbd "M-r e") 'rrf-extract-method)
(local-set-key (kbd "M-r m") 'rrf-extract-method)
(local-set-key (kbd "M-r v") 'rrf-extract-temporary)
(local-set-key (kbd "M-r t") 'rrf-extract-temporary)
(local-set-key (kbd "M-r i") 'rrf-inline-variable-definition)
(local-set-key (kbd "M-r c") 'rrf-extract-constant)

;; ;;(setq ruby-deep-arglist nil)          ; Obsolete?
;; (setq ruby-deep-indent-paren-style nil)

;; ;; Compilation
(local-unset-key (kbd "C-\\"))
(local-set-key (kbd "C-\\") 'recompile)

(local-unset-key (kbd "M-\\"))
(local-set-key (kbd "M-\\") 'compile)

(setq xmpfilter-command-name "ruby -S xmpfilter --no-warnings --dev --fork --detect-rbtest")
