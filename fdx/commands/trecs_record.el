;; RECORDING
;;;###autoload
(defun trecs/start-recording ()
  "Start recording"
  (interactive)
  (trecs/start-trecs-timer)
  (trecs/start-trecs-record-command))

;;;###autoload
(defun trecs/start-trecs-record-command ()
  "Launch the trecs_record external command"
                                        ;(start-process "trecs-recording" "trecs-recording" "loop")
  )

;;;###autoload
(defun trecs/start-trecs-timer ()
  "Set the trecs-timer to start htmlizing regularly"
  (setq trecs-timer
        (run-with-timer 0 0.08 'trecs/htmlize-current-buffer)))

;;;###autoload
(defadvice trecs/htmlize-current-buffer (around trecs/htmlize-around)
  "Advice"
  (if (looking-at "$")
      (progn
        (insert " ")
        (backward-char)
        ad-do-it
        (delete-char 1))
    ad-do-it))

;;;###autoload
(defun trecs/htmlize-current-buffer ()
  "htmlize the current section of the current buffer"
  (interactive)
  (widen)
  (save-excursion
    (save-restriction
      (trecs/activate-visible-mark)
      (push-mark-command nil t)

      (let (
            (html (htmlize-region (trecs/buff-top) (trecs/buff-bottom)))
            )
        (with-current-buffer html (write-region (point-max) (point-min) "/tmp/emacs-session-recording.html" nil 'nodisp))
        (kill-buffer html)
        )
      )))

;;;###autoload
(defun trecs/activate-visible-mark ()

  (defvar pg-mark-overlay nil
    "Overlay to show the position where the mark is")
  (make-variable-buffer-local 'pg-mark-overlay)

  (put 'pg-mark-mark 'face 'mode-line-inactive)

  (defvar pg-mark-old-position nil
    "The position the mark was at. To be able to compare with the
current position")

  (defun pg-show-mark ()
    "Display an overlay where the mark is at. Should be hooked into
activate-mark-hook"
    (unless pg-mark-overlay
      (setq pg-mark-overlay (make-overlay 0 0))
      (overlay-put pg-mark-overlay 'category 'pg-mark-mark))
    (let ((here (mark t)))
      (when here
        (move-overlay pg-mark-overlay here (1+ here)))))

  (defadvice  exchange-point-and-mark (after pg-mark-exchange-point-and-mark)
    "Show visual marker"
    (pg-show-mark))

  (ad-activate 'exchange-point-and-mark)
  (add-hook 'activate-mark-hook 'pg-show-mark))

;;;###autoload
(defun trecs/buff-top ()
  "Returns the buffer top"
  (interactive)
  (save-excursion
    (move-to-window-line 0)
    (window-point)))

;;;###autoload
(defun trecs/buff-bottom ()
  "Returns the buffer bottom"
  (interactive)
  (save-excursion
    (move-to-window-line -1)
    (forward-line)
    (window-point)))

;; STOPPING

;;;###autoload
(defun trecs/stop-recording ()
  (interactive)
  "Stop recording"
  (trecs/stop-trecs-record-command)
  (trecs/stop-trecs-timer))

;;;###autoload
(defun trecs/stop-trecs-record-command ()
  "Launch the trecs_record external command"
                                        ;(delete-process "trecs-recording")
  )

;;;###autoload
(defun trecs/stop-trecs-timer ()
  "Set the trecs-timer to start htmlizing regularly"
  (cancel-timer trecs-timer))
