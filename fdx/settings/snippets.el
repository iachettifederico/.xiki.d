(setq yas-snippet-dirs
      (list (expand-file-name "fdx/snippets" user-emacs-directory)
            ))

(yas-global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))
