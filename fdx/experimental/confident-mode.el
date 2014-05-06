(defun is-input ()
  "Documentation."
  (interactive)
  (save-excursion
    (end-of-line)
    (insert " # INPUT"))
  )

(defun is-output ()
  "Documentation."
  (interactive)
  (save-excursion
    (end-of-line)
    (insert " # OUTPUT"))
  )

(defun is-failure ()
  "Documentation."
  (interactive)
  (save-excursion
    (end-of-line)
    (insert " # FAILURE"))
  )

(defun is-work ()
  "Documentation."
  (interactive)
  (save-excursion
    (end-of-line)
    (insert " # WORK"))
  )

(make-face 'input-face)
(set-face-attribute 'input-face nil :background "NavajoWhite2")

(make-face 'output-face)
(set-face-attribute 'output-face nil :background "SteelBlue")

(make-face 'failure-face)
(set-face-attribute 'failure-face nil :background "LightPink")

(make-face 'work-face)
(set-face-attribute 'work-face nil :background "SpringGreen3")

(set-face-attribute 'input-face nil  :foreground "black")
(set-face-attribute 'output-face nil :foreground "black")
(set-face-attribute 'failure-face nil  :foreground "black")
(set-face-attribute 'work-face nil :foreground "black")

(defun confident-mode-setup-function ()
  "Documentation."
  (message "ACTIVATING CONFIDENT MODE")
  )

(defun confident-mode-teardown-function ()
  "Documentation."
  (message "DEACTIVATING CONFIDENT MODE")
  )


;; ("\\(.*# INPUT$\\)"
;;  (1 'input-face))
;; ("\\(.*# OUTPUT$\\)"
;;  (1 'output-face))
;; ("\\(.*# FAILURE$\\)"
;;  (1 'failure-face))
;; ("\\(.*# WORK$\\)"
;;  (1 'work-face))


(define-minor-mode confident-mode
  "Confident minor mode"
  nil          ; INIT-VALUE
  " Confident" ; LIGHTER
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-i") 'is-input)
    (define-key map (kbd "C-o") 'is-output)
    (define-key map (kbd "C-f") 'is-failure)
    (define-key map (kbd "C-w") 'is-work)
    map)          ; KEYMAP
  (if confident-mode
      (confident-mode-setup-function)
    (confident-mode-teardown-function)
    ))

(provide 'confident-mode)
