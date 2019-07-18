;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
;;; wheeeeee
;; Place your private configuration here

(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))
(global-set-key (kbd "S-<f10>") 'recompile)
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))

;; https://lists.gnu.org/archive/html/emacs-orgmode/2009-10/msg00276.html
(setq org-agenda-files
(split-string
(shell-command-to-string " fd -d 3 -t f -t l .org$ ~/org")
"\n"))

(setq org-capture-templates `(
	("s" "Protocol" entry (file+headline ,(concat org-directory "notes.org") "Inbox")
        "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?")
	("L" "Protocol Link" entry (file+headline ,(concat org-directory "notes.org") "Inbox")
        "* %? [[%:link][%:description]] \nCaptured On: %U")
    ("p" "Protocol snippet" entry (file, (concat org-directory "snippets.org") )
     "* %? [[%:link][%:description]] \n  #+BEGIN_SRC %^{Language}\n%i\n#+END_SRC\n\n\n")
    ))

(add-hook! 'org-mode
  (local-set-key (kbd "C-RET") 'org-insert-todo-heading))

