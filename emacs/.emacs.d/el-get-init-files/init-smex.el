(progn
  (setq smex-save-file "~/.emacs.d/.smex-items")
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))
