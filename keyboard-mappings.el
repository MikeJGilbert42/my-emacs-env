(defvar this-dir (file-name-directory load-file-name))

(define-keyboard-mappings "g"
  '(("Windows"
     ("M-<left>" windmove-left)
     ("M-<right>" windmove-right)
     ("M-<up>" windmove-up)
     ("M-<down>" windmove-down)
     ("C-x 4 t" toggle-window-split)
     ("C-<tab>" other-window))
    ("Editing"
     ("C-z" undo))
    ("Visit Environment Dir"
     ("<f5>" (lambda () (interactive) (dired this-dir))))))
