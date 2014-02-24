;;;###autoload
(defun open-project (project-folder)
  "Open a project."
  (interactive )
  (dired-at-point project-folder)
  (defvar current-project project-folder))

;;;###autoload
(defun current-project ()
  "Return the current project directory."
  (interactive)
  (current-project))
