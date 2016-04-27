(defun run-funcs (fn-list val)
  (dolist (fn fn-list)
    (when (fboundp fn) (apply fn val))))
