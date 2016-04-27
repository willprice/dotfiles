;; user.el
(load-file (expand-file-name "~/.emacs.d/el-get.el"))

(load-dirs)

;; Load agda-mode
(load-file (let ((coding-system-for-read 'utf-8))
          (shell-command-to-string "agda-mode locate")))
;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)

;; Garbage collection optimisation
(setq gc-cons-threshold 20000000)


;; LEAVE AFTER THIS POINT, MACHINE OWNED
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(load-dirs "~/.emacs.d/init"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
