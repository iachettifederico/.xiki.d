;;;###autoload
(defun fdx/ret-and-cursor-up ()
  (interactive)
  (indent-according-to-mode)
  (forward-line -1)
  (end-of-line)
  (insert "\n")
  (indent-according-to-mode))
