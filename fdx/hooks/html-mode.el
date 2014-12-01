(require 'expand-region)
(local-set-key (kbd "M-r") 'er/expand-region)

(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'fdx/reindent-buffer)
