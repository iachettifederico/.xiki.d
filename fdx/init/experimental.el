(defun fdx/load-experimental ()
  "Loads all Lisp files in the experimental subdirectory of the init directory."
  (dolist (file (directory-files (concat user-emacs-directory "fdx/experimental")
                                 nil
                                 "\\.el$"))
    (fdx/load-init-file (concat "fdx/experimental/" file))))

(fdx/load-experimental)
