;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C-<kp-add>") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-<kp-subtract>") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-adjust)

(global-set-key (kbd "C-c s") 'query-replace-regexp)
(global-set-key (kbd "C-c S") 'replace-regexp)

(global-set-key (kbd "C-c i") 'align-regexp)

(global-unset-key (kbd "M--"))
(global-set-key (kbd "M--") 'kill-whole-line)
(global-set-key (kbd "C-d") 'duplicate-line)

(global-set-key (kbd "C-<f8>") 'color-theme-ir-black)
(global-set-key (kbd "C-<f9>") 'color-theme-dark-laptop)
(global-set-key (kbd "C-<f10>") 'color-theme-deep-blue)

(global-unset-key (kbd "C-M-j"))
(global-unset-key (kbd "C-M-k"))
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)

(global-set-key (kbd "C-M-i") 'previous-line)
(global-set-key (kbd "C-M-k") 'next-line)
(global-set-key (kbd "C-M-j") 'left-char)
(global-set-key (kbd "C-M-l") 'right-char)


(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

(global-unset-key (kbd "C-x \\"))
(global-set-key (kbd "C-x \\") 'split-window-right)
(global-unset-key (kbd "C-x |"))
(global-set-key (kbd "C-x |") 'split-window-right)

(global-set-key (kbd "C-x /") 'toggle-window-split)

(global-unset-key (kbd "C-x -"))
(global-set-key (kbd "C-x -") 'split-window-below)
(global-unset-key (kbd "C-x _"))
(global-set-key (kbd "C-x _") 'split-window-below)


(global-unset-key (kbd "C-z"))

(global-set-key (kbd "C-c k") 'kill-other-buffers)

(global-set-key (kbd "C-c C-w") (lambda () (interactive) (switch-to-buffer "@welcome/")))
(global-set-key (kbd "C-x C-w") (lambda () (interactive) (switch-to-buffer "*scratch*")))

(global-set-key (kbd "<f11>") 'fullscreen-mode-fullscreen-toggle)

(global-set-key (kbd "C-x C-l") 'el4r-jump-to-error)

(global-set-key (kbd "S-<return>") 'fdx/ret-and-cursor-up)

;; TRecs
(global-set-key (kbd "<XF86Forward>") 'trecs/start-recording)
(global-set-key (kbd "<XF86Back>") 'trecs/stop-recording)
(global-set-key (kbd "M-p") 'ace-window)

