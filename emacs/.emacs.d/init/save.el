; Backup on every change to a buffer instead of when a file is saved.
(setq vc-make-backup-files t)

(setq version-control t ;; Use version numbers for backups.
      kept-new-versions 10 ;; Number of newest versions to keep.
      kept-old-versions 0 ;; Number of oldest versions to keep.
      delete-old-versions t ;; Don't ask to delete excess backup versions.
      backup-by-copying t) ;; Copy all files, don't rename them.

(setq backup-directory-alist '(("" . "~/.tmp/emacs-saves")))

;; If you want to avoid 'backup-by-copying', you can instead use
;;
;; (setq backup-by-copying-when-linked t)
;;
;; but that makes the second, "per save" backup below not run, since
;; buffers with no backing file on disk are not backed up, and
;; renaming removes the backing file.  The "per session" backup will
;; happen in any case, you'll just have less consistent numbering of
;; per-save backups (i.e. only the second and subsequent save will
;; result in per-save backups).

;; If you want to avoid backing up some files, e.g. large files,
;; then try setting 'backup-enable-predicate'.  You'll want to
;; extend 'normal-backup-enable-predicate', which already avoids
;; things like backing up files in '/tmp'.
