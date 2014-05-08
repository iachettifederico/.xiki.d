(require 'expand-region)
(local-set-key (kbd "M-r") 'er/expand-region)

(local-unset-key (kbd "C-="))
(local-set-key (kbd "C-=") 'fdx/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'fdx/reindent-buffer)

(local-set-key (kbd "RET") 'fdx/indent-this-and-previous)

(local-set-key (kbd "C-c e") 'erb-to-haml-and-change-file-extension)
(local-set-key (kbd "C-c C-e") 'erb-to-haml-and-change-file-extension)
