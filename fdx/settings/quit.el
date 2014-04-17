(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
        (save-buffers-kill-emacs))
    (message "Canceled exit"))

(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))
