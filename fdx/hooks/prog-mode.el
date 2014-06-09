(add-hook 'before-save-hook 'whitespace-cleanup)

(local-unset-key (kbd "C-="))
(local-set-key (kbd "C-=") 'fdx/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'fdx/reindent-buffer)

(subword-mode)

(local-set-key (kbd "RET") 'fdx/indent-this-and-previous)
