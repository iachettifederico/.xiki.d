(ido-mode 1)
(setq ido-everywhere t
      ido-auto-merge-work-directories-length -1
      ido-enable-flex-matching t
      ido-use-filename-at-point nil)

; Flex matching for ido-mode
(require 'flx-ido)
(flx-ido-mode 1)
;; Disable ido faces to see flx higlights
(setq ido-use-faces nil)

;; Ido vertical mode (like Vim's CtrlP)
(require 'ido-vertical-mode)
(ido-vertical-mode)
