;; Change scratch buffer to ruby-mode
(setq initial-major-mode 'enh-ruby-mode)
(setq initial-scratch-message )

(with-current-buffer "*scratch*"
  (interactive)
  (enh-ruby-mode)
  (insert "RUBY_VERSION  # =>")
  (xmp))
