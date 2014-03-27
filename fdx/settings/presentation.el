(defun conf-appearence ()
  "Conference mode."
  (interactive)
  (color-theme-dark-laptop)


  (custom-set-faces
   '(default ((t (:family "Inconsolata"
                          :foundry "unknown"
                          :slant normal
                          :weight normal
                          :height 190 :width normal)))))
  )

(global-set-key (kbd "<f8>") 'normal-appearence)
(global-set-key (kbd "<f9>") 'conf-appearence)
