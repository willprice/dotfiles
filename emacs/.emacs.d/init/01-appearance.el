(setq inhibit-startup-screen t)
(global-linum-mode t)
(column-number-mode t)
(tool-bar-mode nil)
(scroll-bar-mode nil)

(global-hl-line-mode) ; highlight current line
(add-hook 'after-make-frame-fucntions
          '(lambda (f) (with-selected-frame f
                                            (if (window-system f)
                                                (load-theme 'solarized)
                                                (set-face-font 'default "Terminus-12")))))

