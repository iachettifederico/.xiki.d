(paredit-mode 1)

;; fci-mode
;; (require 'fill-column-indicator)
;; (setq fci-rule-column 80)
;; (fci-mode)

(add-hook 'before-save-hook 'whitespace-cleanup)

(local-set-key (kbd "C-=") 'fdx/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'fdx/reindent-buffer)
(local-set-key (kbd "RET") 'fdx/indent-this-and-previous)
