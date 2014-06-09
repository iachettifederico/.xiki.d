;;(rvm-activate-corresponding-ruby)

;; fci-mode
;; (require 'fill-column-indicator)
;; (setq fci-rule-column 80)
;; (fci-mode)

(require 'ruby-electric)
(electric-pair-mode t)

;; Colorize symbols correctly in ruby-mode
(font-lock-add-keywords
 'ruby-mode
 '(("\\(\\b\\sw[_a-zA-Z0-9]*:\\)\\(?:\\s-\\|,\\|)\\|$\\)" (1 font-lock-constant-face))))

(local-set-key (kbd "C-c C-c") 'xmp)
(local-set-key (kbd "C-;") 'comment-dwim)

;;; Refactorings
(local-set-key (kbd "C-, l") 'fdx/refactoring/extract-let)
(local-set-key (kbd "C-, e") 'rrf-extract-method)
(local-set-key (kbd "C-, m") 'rrf-extract-method)
(local-set-key (kbd "C-, v") 'rrf-extract-temporary)
(local-set-key (kbd "C-, t") 'rrf-extract-temporary)
(local-set-key (kbd "C-, i") 'rrf-inline-variable-definition)
(local-set-key (kbd "C-, c") 'rrf-extract-constant)

(local-set-key (kbd "M-r l") 'fdx/refactoring/extract-let)
(local-set-key (kbd "M-r e") 'rrf-extract-method)
(local-set-key (kbd "M-r m") 'rrf-extract-method)
(local-set-key (kbd "M-r v") 'rrf-extract-temporary)
(local-set-key (kbd "M-r t") 'rrf-extract-temporary)
(local-set-key (kbd "M-r i") 'rrf-inline-variable-definition)
(local-set-key (kbd "M-r c") 'rrf-extract-constant)

;;(setq ruby-deep-arglist nil)          ; Obsolete?
(setq ruby-deep-indent-paren-style nil)
