;; Thanks StackOverflow!
;; http://stackoverflow.com/questions/92971/how-do-i-set-the-size-of-emacs-window/94277#94277
;; http://stackoverflow.com/questions/5795451/how-to-detect-that-emacs-is-in-terminal-mode/5795518#5795518
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (when (display-graphic-p)
    (progn
      ;; use 120 char wide window for largeish displays
      ;; and smaller 80 column windows for smaller displays
      ;; pick whatever numbers make sense for you
      (if (> (x-display-pixel-width) 1280)
          (add-to-list 'default-frame-alist (cons 'width 160))
        (add-to-list 'default-frame-alist (cons 'width 80)))
      ;; for the height, subtract a couple hundred pixels
      ;; from the screen height (for panels, menubars and
      ;; whatnot), then divide by the height of a char to
      ;; get the height we want
      (add-to-list 'default-frame-alist
                   (cons 'height (/ (- (x-display-pixel-height) 200)
                                    (frame-char-height)))))))

(set-frame-size-according-to-resolution)
