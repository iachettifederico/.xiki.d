;; Change scratch buffer to ruby-mode
(setq initial-major-mode 'ruby-mode)
(setq initial-scratch-message )

(with-current-buffer "*scratch*"
  (interactive)
  (ruby-mode)
  (insert "RUBY_VERSION  # =>")
  (xmp))
