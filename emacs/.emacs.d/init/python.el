(remove-hook
 'python-mode-hook 2)

(add-hook
 'python-mode-hook
 (lambda ()
   (progn
    (setq indent-tabs-mode t)
    (setq python-guess-indent nil)
    (setq python-indent 4)
    (setq tab-width 2))))
