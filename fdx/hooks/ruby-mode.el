;; show wrap guide
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(fci-mode)
(local-set-key (kbd "C-c v w") 'fci-mode)

;; activate character pairing
(smartparens-mode)

(sp-with-modes (list major-mode)
  (sp-local-pair "|" "|"))

;; do some spell checking (requires:  brew install aspell --lang=en)
(flyspell-prog-mode)

(local-set-key (kbd "C-c v s") 'fdx/toggle-program-spelling)


(local-set-key (kbd "C-c x") 'xmp)  ; (requires:  gem install rcodetools)
