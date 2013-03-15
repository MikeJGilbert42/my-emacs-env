(setq-default tool-bar-mode nil)
(if (member 'color-theme features)
    (load "~/.emacs.d/themes/color-theme-molokai.el")
  (color-theme-molokai))
