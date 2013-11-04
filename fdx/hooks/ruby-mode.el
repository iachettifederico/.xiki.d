;; fci-mode
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(fci-mode)

;; activate character pairing
(require 'smartparens)
(smartparens-mode)

;(sp-with-modes (list major-mode)
;  (sp-local-pair "|" "|"))

;; Colorize symbols correctly in ruby-mode
(font-lock-add-keywords
 'ruby-mode
 '(("\\(\\b\\sw[_a-zA-Z0-9]*:\\)\\(?:\\s-\\|$\\)" (1 font-lock-constant-face))))

;; show junk whitespace
(whitespace-mode)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)


(local-set-key (kbd "RET") 'fdx/indent-this-and-previous)
