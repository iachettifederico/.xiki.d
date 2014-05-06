(font-lock-add-keywords
 'ruby-mode
 '(
   ("\\(\\b\\sw[_a-zA-Z0-9]*>\\)\\(?:\\s-\\|$\\)" (1 font-lock-constant-face))
   ))
