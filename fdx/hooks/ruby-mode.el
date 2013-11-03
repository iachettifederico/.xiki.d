;; fci-mode
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(fci-mode)
(fci-rule-width 4)

;; activate character pairing
(require 'smartparens)
(smartparens-mode)

;(sp-with-modes (list major-mode)
;  (sp-local-pair "|" "|"))

(require 'whitespace)
;(whitespace-mode)
;; Show trailing whitespaces
(setq show-trailing-whitespace t)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(message "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
