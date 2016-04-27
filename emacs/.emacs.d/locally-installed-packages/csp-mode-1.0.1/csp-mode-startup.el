
;;;### (autoloads (csp-mode) "csp-mode" "csp-mode.el" (15359 56038))
;;; Generated autoloads from csp-mode.el

(autoload (quote csp-mode) "csp-mode" "\
Major mode for editing CSP code written for fdr. \\<csp-mode-map>
TAB indents for csp code.  Delete converts tabs to spaces as it moves back.
LFD terminates current line after indenting it correctly. The next line is indented as well.

Other useful functions are:

\\[csp-comment-area]	- Put marked area in a comment.
\\[csp-uncomment-area]	- Uncomment an area commented with \\[csp-comment-area] or \"--\".
\\[electric-csp-semi]	- If csp-auto-newline is set, will insert a semicolon at current position and terminate current line indenting the next.
\\[electric-csp-arrow]	- Same as before, but inserts an arrow at current position.

Variables controlling indentation/edit style:

 csp-indent-level      (default 4)
    Indentation of csp statements with respect to containing block.
 csp-auto-newline      (default nil)
    Non-nil means automatically newline after semicolons and the arrow
    mark after an end.
 csp-tab-always-indent (default t)
    Non-nil means TAB in csp mode should always reindent the current line,
    regardless of where in the line point is when the TAB command is used.
 csp-untabify          (default t)
    Non-nil means TAB in csp mode will always be converted into spaces.

See also the user variables csp-type-keywords, csp-start-keywords and
csp-separator-keywords.

Turning on csp mode calls the value of the variable csp-mode-hook with
no args, if that value is non-nil." t nil)

;;;***

