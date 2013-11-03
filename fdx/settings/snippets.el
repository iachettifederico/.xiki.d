(setq yas-snippet-dirs
      (list (expand-file-name "fdx/snippets" user-emacs-directory)))

(yas-global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))

(defun fdx/recompile-snippets ()
  (interactive)
  (yas/recompile-all)
  (yas/reload-all))
(global-set-key (kbd "<f7>") 'pepe)
