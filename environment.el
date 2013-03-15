(if (boundp 'g-after-loads) (funcall g-after-loads))
(setq-default truncate-lines t)
(setq-default show-trailing-whitespace t)
(setq-default indent-tabs-mode nil)
(setq x-select-enable-clipboard t)
(setq-default truncate-lines t)
(setq coffee-tab-width 4)
(setq default-tab-width 4)
(setq inhibit-splash-screen t)
(setq rspec-shell-name "*shell*")
(setq tab-width 4)
(setenv "PAGER" "cat")
(setenv "EDITOR" "emacs")
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")
(column-number-mode)
(global-linum-mode t)
(add-hook 'shell-mode-hook
          (lambda ()
            (setq tab-width 8)
            (shell-up-down-minor-mode)
            (ansi-color-for-comint-mode-on)))
(ffap-bindings)
(if (boundp 'g-before-set-keyboard-mapping) (funcall g-before-set-keyboard-mapping))
(set-default-keyboard-mapping "g")
