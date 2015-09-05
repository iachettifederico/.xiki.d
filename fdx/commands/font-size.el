;;;###autoload
(defun fdx/set-default-font (size  font)
  (interactive)
  (setq fdx-default-gui-font      font)
  (setq fdx-default-gui-font-size size)
  (setq fdx-gui-font      font)
  (setq fdx-gui-font-size size)

  (fdx/set-font-size size font))

;;;###autoload
(defun fdx/set-font-size (size &optional font)
  "Set up emacs for screencasting"
  (interactive)
  (setq fdx-gui-font      (or font "Inconsolata"))
  (setq fdx-gui-font-size (or size 20))

  (set-frame-font
   (concat
    fdx-gui-font
    ":pixelsize="
    (number-to-string fdx-gui-font-size)
    ":foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")
   nil)
  )

;;;###autoload
(defun fdx/increase-font-size ()
  "Increase font size"
  (interactive)
  (fdx/set-font-size (+ fdx-gui-font-size 2)))

;;;###autoload
(defun fdx/decrease-font-size ()
  "Decrease font size"
  (interactive)
  (fdx/set-font-size (- fdx-gui-font-size 2)))

;;;###autoload
(defun fdx/reset-font-size ()
  "Decrease font size"
  (interactive)
  (fdx/set-font-size fdx-default-gui-font-size))
