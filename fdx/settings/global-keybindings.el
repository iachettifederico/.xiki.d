(global-set-key (kbd "C-c s") 'query-replace-regexp)
(global-set-key (kbd "C-c S") 'replace-regexp)

(global-set-key (kbd "C-c i") 'align-regexp)


(global-unset-key (kbd "M--"))
(global-set-key (kbd "M--") 'kill-whole-line)
(global-set-key (kbd "C-d") 'duplicate-line)

(global-set-key (kbd "C-M-8") 'color-theme-ir-black)
(global-set-key (kbd "C-M-9") 'color-theme-railscasts)

(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)

(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)
