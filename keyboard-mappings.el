(defvar this-dir (file-name-directory load-file-name))

(define-keyboard-mappings "g"
  '(("Windowing"
     ("M-<left>"  windmove-left)
     ("M-<right>" windmove-right)
     ("M-<up>"    windmove-up)
     ("M-<down>"  windmove-down)
     ("C-x 4 t"   toggle-window-split)
     ("C-<tab>"   other-window)
     ("s-n"       new-frame)
     ("s-o"       other-frame)
     ("s-s"       shell)
     ("s-w"       delete-frame))
    ("Editing"
     ("C-z"       undo))
    ("Environment"
     ("<f5>"      revert-buffer)
     ("<f6>"      (lambda () (interactive) (dired this-dir))))))
