; Load el4r, which loads Xiki
;; (add-to-list 'load-path "/home/fedex/.rvm/gems/ruby-1.9.3-p551/gems/trogdoro-el4r-1.0.10/data/emacs/site-lisp/")
;; (require 'el4r)
;; (el4r-boot)

;; FDX's Emacs configuration
(require 'autoload)

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
(fdx/load-init-file "fdx/init/experimental")
