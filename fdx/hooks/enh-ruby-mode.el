;; (rvm-activate-corresponding-ruby)

;; fci-mode
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(fci-mode)

(require 'ruby-electric)
(electric-pair-mode t)

(local-unset-key (kbd "C-c C-c"))
(local-unset-key (kbd "C-;"))
(local-set-key (kbd "C-c C-c") 'xmp)
(local-set-key (kbd "C-;") 'comment-dwim)

;;; Refactorings
(local-set-key (kbd "M-r l") 'fdx/refactoring/extract-let)
(local-set-key (kbd "M-r m") 'rrf-extract-method)
(local-set-key (kbd "M-r t") 'rrf-extract-temporary)
(local-set-key (kbd "M-r c") 'rrf-extract-constant)
(local-set-key (kbd "M-r i") 'fdx/refactoring/interpolate-string)
(local-set-key (kbd "M-r s") 'fdx/refactoring/stringify-and-interpolate-string)

;; ;;(setq ruby-deep-arglist nil)          ; Obsolete?
;; (setq ruby-deep-indent-paren-style nil)

;; ;; Compilation
(local-unset-key (kbd "C-\\"))
(local-set-key (kbd "C-\\") 'recompile)

(local-unset-key (kbd "M-\\"))
(local-set-key (kbd "M-\\") 'compile)

(defadvice comment-dwim (around rct-hack activate)
  "If comment-dwim is successively called, add => mark."
  (if (and (eq major-mode 'enh-ruby-mode)
           (eq last-command 'comment-dwim)
           ;; TODO =>check
           )
      (insert "=>")
    ad-do-it))

(setq xmpfilter-command-name "ruby -S xmpfilter --no-warnings --dev --fork --detect-rbtest")
