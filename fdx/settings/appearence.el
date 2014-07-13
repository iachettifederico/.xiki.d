(defun normal-appearence ()
  "Normal appearence for Emacs."

  (interactive)
  (require 'color-theme)
  (color-theme-initialize)

  (require 'color-theme-ir-black)
  (color-theme-ir-black)

  ;;(require 'color-theme-sanityinc-tomorrow)
  ;;(color-theme-sanityinc-tomorrow-night)

  (custom-set-faces
   '(default ((t (:family "Inconsolata"
                          :foundry "unknown"
                          :slant normal
                          :weight normal
                          :height 120 :width normal)))))

  )

(normal-appearence)

(show-paren-mode t)
