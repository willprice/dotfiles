(progn
  (let ((path (shell-command-to-string ". ~/.bashrc; echo -n $PATH")))
    (setenv "PATH" path)
    (setq exec-path
	  (append (split-string-and-unquote path ":") exec-path))))
