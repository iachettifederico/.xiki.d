;; FDX's Emacs configuration

(require 'autoload)

;;; TEMP ;;;
(defun j2f ()
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (replace-regexp "jeg2" "fdx")))
(global-set-key (kbd "<f6>") 'j2f)
;;;;;;;;;;;;


(defun fdx/load-init-file (path &optional noerror)
  "This loads a file from inside the the .emacs.d directory"
  (let ((file (file-name-sans-extension
               (expand-file-name path user-emacs-directory))))
    (load file noerror)))

;; load configuration settings by type
(fdx/load-init-file "fdx/init/freshen")
(fdx/load-init-file "fdx/init/system")
(fdx/load-init-file "fdx/init/autoloads")
(fdx/load-init-file "fdx/init/packages")
(fdx/load-init-file "fdx/init/compile")
(fdx/load-init-file "fdx/init/autohooks")
(fdx/load-init-file "fdx/init/settings")
