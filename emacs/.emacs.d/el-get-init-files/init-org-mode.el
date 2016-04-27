(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)

(eval-after-load "org"
  '(progn
     (org-babel-do-load-languages
      'org-babel-load-languages
      '((awk . t)
	(C . t)
	(clojure . t)
	(ditaa . t)
	(dot . t)
	(ebnf . t)
	(emacs-lisp . t)
	(gnuplot . t)
	(haskell . t)
	(io . t)
	(java . t)
	(js . t)
	(latex . t)
	(ledger . t)
	(lisp . t)
	(makefile . t)
	(matlab . t)
	(ocaml . t)
	(octave . t)
	(org . t)
	(plantuml . t)
	(processing . t)
	(prolog . t)
	(ipython . t)
	(python . t)
	(R . t)
	(ruby . t)
	(sass . t)
	(scheme . t)
	(sml . t)
	(sh . t)
	(sql . t))) 
     (setq org-confirm-babel-evaluate nil)
     
     ;; Key mappings
     (define-key org-mode-map (kbd "C-M-<return>") 'org-insert-subheading)

     ;; PDFs visited in Org-mode are opened in zathura (and not in the default choice)
     ;; Change .pdf association directly within the alist
     (setcdr (assoc "\\.pdf\\'" org-file-apps) "zathura %s")
     
     ;; Latex export settings
     (setq org-export-latex-listings t)
     (setq org-export-latex-packages-alist
	   (append '("AUTO" "inputenc" t)
		   '("" "tikz")))

     (unless (boundp 'org-LaTeX-classes)
       (setq org-LaTeX-classes nil))
     (add-to-list 'org-LaTeX-classes
		  '("org-article"
		    "\\documentclass[11pt,a4paper]{article}
		     \\usepackage{amsmath}
		     \\usepackage{amsthm}
		     \\usepackage{tikz}
		     \\usepackage{pgfplots}
		     \\usepackage{parskip}
		     \\usetikzlibrary{calc}
		     % Extend matrix environments for writing block matrices
		     \\makeatletter
		     \\renewcommand*\\env@matrix[1][*\\c@MaxMatrixCols c]{%
		     \\hskip -\\arraycolsep
		     \\let\\@ifnextchar\\new@ifnextchar
		     \\array{#1}}
		     \\makeatother
		     [DEFAULT-PACKAGES]
		     [NO-PACKAGES]
		     [EXTRA]"
	       ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))) 
