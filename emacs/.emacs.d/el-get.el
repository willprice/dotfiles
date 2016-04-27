(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (progn
     (end-of-buffer)
     (eval-print-last-sexp))))


;; now either el-get is `require'd already, or have been `load'ed by the
;; el-get installer.

(setq el-get-git-shallow-clone t)
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files")
(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")
(setq my:el-get-packages
      '(auctex auto-complete babel buffer-move cdlatex-mode cl-lib clojure-mode color-theme color-theme-solarized color-theme-tango ctable dash deferred el-get elpy emacs-goodies-el epc escreen find-file-in-project fuzzy ghc-mod ghci-completion git-modes goto-last-change haskell-extension haskell-latex haskell-mode highlight-indentation idomenu iedit jedi magit mmm-mode multi-mode nose org-mode package php-mode-improved popup psvn rainbow-delimiters recentf-buffer recentf-ext regex-tool rope scion structured-haskell-mode switch-window tabulated-list yasnippet))

;;
;; Some recipes require extra tools to be installed
;;
;; Note: el-get-install requires git, so we know we have at least that.
;;
(when (el-get-executable-find "cvs")
  (add-to-list 'my:el-get-packages 'emacs-goodies-el)) ; the debian addons for emacs

(when (el-get-executable-find "svn")
  (loop for p in '(psvn ; M-x svn-status
		   )
	do (add-to-list 'my:el-get-packages p)))

(setq my:el-get-packages
      (append
       my:el-get-packages
       (loop for src in el-get-sources collect (el-get-source-name
						src))))

(el-get 'sync my:el-get-packages)
(el-get 'sync)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))
