;; ;; use spaces instead of tabs
;; (setq-default indent-tabs-mode nil)
;; (setq-default tab-width        4)
;; (setq         tab-stop-list    (number-sequence 4 120 4))

;; ;; setup junk whitespace types for when whitespace mode is active
(setq whitespace-style '(face tabs trailing))
(setq whitespace-trailing-regexp
      "\\b\\(\\(\t\\| \\|\xA0\\|\x8A0\\|\x920\\|\xE20\\|\xF20\\)+\\)$")

;; "\\b\\(\\(   \\| \\|\240\\|ࢠ\\|ठ\\|ภ\\|༠\\)+\\)$"
