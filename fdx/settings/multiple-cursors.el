(require 'multiple-cursors)

;; Multiple cursors
(global-set-key (kbd "C-M-<return>") 'mc/edit-lines)
(global-unset-key (kbd "C-c C-a"))
(global-set-key (kbd "C-c C-a") 'mc/edit-lines)
(global-set-key (kbd "C-c a") 'mc/mark-all-like-this)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

(global-set-key (kbd "C-c C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C->") 'mc/mark-next-like-this)

;; (global-set-key (kbd "C-.") 'mc/mark-all-like-this)
;; (global-set-key (kbd "C-c .") 'mc/mark-all-like-this)
