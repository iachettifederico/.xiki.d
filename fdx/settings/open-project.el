(defun open-project (project-folder)
  "Open DevChat.tv project."
  (interactive)
  (dired-at-point project-folder)
  )


(global-set-key (kbd "C-c C-o e")
                (lambda ()
                  (interactive)
                  (open-project "~/.emacs.d/fdx/")))

(global-set-key (kbd "C-c C-o i")
                (lambda ()
                  (interactive)
                  (open-project "~/code/intentional_excellence")))

(global-set-key (kbd "C-c C-o d")
                (lambda ()
                  (interactive)
                  (open-project "~/code/intentional_excellence/devchattv")))

(global-set-key (kbd "C-c C-o t")
                (lambda ()
                  (interactive)
                  (find-file "~/code/intentional_excellence/time_sheet.rb")))
