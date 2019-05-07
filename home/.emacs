(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" "1ba61848d0d8c78e037867c26f118875705c20f5ad64949a8cee8c8059e5c50f" "5811d86b1d0907966fa2eb1d27a3c0e330c64f388740416f8e8c9079b81123e2" "2aa073a18b2ba860d24d2cd857bcce34d7107b6967099be646d9c95f53ef3643" "b7d967c53f4e3dfc1f847824ffa3f902de44d3a99b12ea110e0ec2fcec24501d" "27dd7c2cedf588b6a67a8b8914ad600b625712d5339cb48f7844169eb6ab5c8e" "4455435a66dba6e81d55a843c9c7e475a7a935271bf63a1dfe9f01ed2a4d7572" "fc524ddf651fe71096d0012b1c34d08e3f20b20fb1e1b972de4d990b2e793339" "9076ed00a3413143191cb9324d9426df38d83fb6dba595afbd43983db1015ef4" "c4d3cbd4f404508849e4e902ede83a4cb267f8dff527da3e42b8103ec8482008" "af033d47be9bd0d0ac6aab1ba7eec464c11f63580890a37c72372b993f8b325e" "7e362b29da8aa9447b51c2b354d8df439db33b3612ddd5baa34ad3de32206d83" "f72ccaa311763cb943de5f9f56a0d53b0009b772f4d05f47835aa08011797aa8" "4c9b1fd4f7b03a28850fa5775ad589f51f27f99414e14a965206ab543a309a3e" "617341f1be9e584692e4f01821716a0b6326baaec1749e15d88f6cc11c288ec6" "ed91d4e59412defda16b551eb705213773531f30eb95b69319ecd142fab118ca" default)))
 '(fci-rule-color "#f1c40f")
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(inhibit-startup-screen t)
 '(linum-format " %6d ")
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(org-export-backends (quote (ascii html icalendar latex md)))
 '(package-selected-packages
   (quote
    (evil-mode centered-window google-this sx undo-tree company-mode move-text which-key openwith helm helm-mode-manager helm-make persp-projectile dashboard dired-filter workgroups2 all-the-icons ace-window dired-sidebar workgroups clang-format buffer-flip xterm-color smooth-scroll smooth-scrolling perspective sublime-themes frame-local projectile ov company-lsp lsp-ui cquery emacs-cquery org-ref expand-region ## ensime scala-mode eww-lnum kaolin-themes dracula-theme magit slime)))
 '(persp-mode t)
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(smooth-scrolling-mode t)
 '(vc-annotate-background "#ecf0f1")
 '(vc-annotate-color-map
   (quote
    ((30 . "#e84a86")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
 ;;(add-to-list 'package-archives (cons "org" "https://orgmode.org/elpa/"))
(package-initialize)

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

;;(use-package cquery
;;	     :init
;;	     (setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack")))

(use-package lsp-mode
  :commands lsp
  ;; :init
  ;; (setq ...)
  )

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
(add-hook 'c++-mode-hook #'lsp)

(use-package multiple-cursors
  :bind (("C-S-c C-S-c" . 'mc/edit-lines)
	 ("C->" . 'mc/mark-next-like-this)
	 ("C-<" . 'mc/mark-previous-like-this)
	 ("C-c C-<" . 'mc/mark-all-like-this)))

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;(use-package "centered-window-mode")

(setq-default left-margin-width 6 right-margin-width 6) ; Define new widths.
(set-window-buffer nil (current-buffer)) ; Use them now.

(scroll-bar-mode 0)

(define-key org-mode-map "\M-q" 'visual-line-mode)
;; (defun load-flatui (load-theme 'flatui))
(with-eval-after-load 'org       
  (setq org-startup-indented t) ; Enable `org-indent-mode' by default
  (add-hook 'org-mode-hook 'visual-line-mode)
  ;;(add-hook 'org-mode-hook 'centered-window-mode)
  ;;(add-hook 'org-mode-hook #'load-flatui)
  ) 

(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-capture-templates
 '(("t" "Todo" entry (file+headline "~/org/capture-notes.org" "Tasks")
        "* TODO %?\nEntered on %U \n  %i\n  %a")
   ("j" "Journal" entry (file+olp+datetree "~/org/personal.org")
    "* %?\nEntered on %U\n  %i\n  %a")
   ("i" "Inbox of this document" entry (file+headline buffer-file-name "Inbox")
    "* TODO %?\n added on %U\n")))
;; TODO add shortcut to save external code snippets to relevant places

(define-key global-map "\C-cc" 'org-capture)
(setq org-log-done t)

(setq-default cursor-type 'bar)
(set-cursor-color "#54fffc")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cherry-blossom t)
;(load-theme 'spacemacs-dark)

(tool-bar-mode -1)
(menu-bar-mode -1)

;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; load the packaged named xyz.
;;(load "cquery") ;; best not to include the ending “.el” or “.elc”
;;(require 'cquery)
(use-package cquery
  :init
  (setq cquery-executable "~/cquery/build/release/bin/cquery"))


;; https://github.com/sebastiencs/sidebar.el
;; (add-to-list 'load-path "~/.local/share/icons-in-terminal/") ;; If it's not already done
;; (use-package dash)
;; (use-package dash-functional)
;; (use-package s)
;; (use-package ov)
;; (use-package projectile)
;; (add-to-list 'load-path "~/.emacs.d/lisp/sidebar.el")
;; ;; (load "sidebar")			
;; (require 'sidebar)
;; (global-set-key (kbd "C-x C-f") 'sidebar-open)
;; (global-set-key (kbd "C-x C-a") 'sidebar-buffers-open)

;;(use-package 'smartparens-config)
(require 'smartparens-config)
(add-hook 'c++-mode-hook #'smartparens-mode)
;; #ecf0f1
(setq clouds "#ecf0f1") 
(use-package magit)
(use-package perspective)
(use-package smooth-scroll)
(smooth-scroll-mode 1)
(persp-mode 1)
;; (global-set-key [(control down)] 'scroll-up-1)
;; (global-set-key [(control up)] 'scroll-down-1)
;; (global-set-key [(control left)] 'scroll-right-1)
;; (global-set-key [(control right)] 'scroll-left-1)

;; TODO maybe not necessary
(use-package buffer-move
  :bind (("<C-S-up>" . 'buf-move-up)
	 ("<C-S-down>" . 'buf-move-down)
	 ("<C-S-left>" . 'buf-move-left)
	 ("<C-S-right>" . 'buf-move-right)))

(use-package buffer-flip
  :ensure t
  :bind  (("C-<tab>" . buffer-flip)
          :map buffer-flip-map
          ( "C-<tab>" .   buffer-flip-forward) 
          ( "C-S-<tab>" . buffer-flip-backward) 
          ( "C-ESC" .     buffer-flip-abort))
  :config
  (setq buffer-flip-skip-patterns
        '("^\\*helm\\b"
          "^\\*swiper\\*$")))

;; https://emacs.stackexchange.com/questions/14222/eshell-go-to-prompt-line-on-key-press
(setq eshell-scroll-to-bottom-on-input t)

(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))
(add-to-list 'org-latex-classes
             '("book"
               "\\documentclass{elteikthesis}[2018/06/06]"
	       ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

;; TODO
;; (load "my-first-lisp-file")
;; (global-set-key [S-f10] 'exec-run)

;; https://stackoverflow.com/a/13408008
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; https://github.com/sonatard/clang-format
(use-package "clang-format"
  :bind (("C-c i" . 'clang-format-region)
	 ("C-c u" . 'clang-format-buffer))
  :config 
	 (setq clang-format-style-option "llvm"))

;; insert newline and jump to it
(global-set-key (kbd "<C-return>") (kbd "C-e C-m"))

;; https://github.com/abo-abo/ace-window
(use-package ace-window
  :bind ("M-o" . 'ace-window)
  :config (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
	   (setq aw-dispatch-always t))

(setq dired-listing-switches "-aBhl  --group-directories-first")


;; https://github.com/jtbm37/all-the-icons-dired
(use-package all-the-icons-dired)
;; all-the-icons-install-fonts
;; (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
;; https://github.com/jojojames/dired-sidebar
(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :init
  (add-hook 'dired-sidebar-mode-hook
            (lambda ()
              (unless (file-remote-p default-directory)
                (auto-revert-mode))))
  :config
  (push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
  (push 'rotate-windows dired-sidebar-toggle-hidden-commands)

  ;; (setq dired-sidebar-subtree-line-prefix "|__")
  ;;(setq dired-sidebar-theme 'vscode)
  ;;(setq dired-sidebar-use-term-integration t)
  ;;(setq dired-sidebar-use-custom-font t))
  )

(defcustom dired-sidebar-display-alist '((side . right) (slot . 1))
  "Alist used in `display-buffer-in-side-window'.

e.g. (display-buffer-in-side-window buffer '((side . left) (slot . -1)))"
  :type 'alist
  :group 'dired-sidebar)

;;https://github.com/tlh/workgroups.el
;;(use-package workgroups)
;;(workgroups-mode 1)
;;(wg-load "~/.emacs.d/workgroups")

(use-package projectile
  :ensure t
  :config
  ;;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
  (projectile-mode +1)
  (projectile-register-project-type 'make '("Makefile")
                                  :compile "make"
                                  :test "make test"
				  :test-suffix "-test")
  ; (setq projectile-test-suffix "test.cpp")
  )

(use-package perspective)
(persp-mode)
(use-package persp-projectile)
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "hey idiot")
;; Set the banner
(setq dashboard-startup-banner "~/.emacs.d/logo.png")
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))

(defun dashboard-insert-custom (list-size)
  (insert "Custom text"))
(add-to-list 'dashboard-item-generators  '(custom . dashboard-insert-custom))
(add-to-list 'dashboard-items '(custom) t)

(defun compile-last ()
  (interactive)
  (org-export-dispatch "C-u"))

(add-hook 'doc-view-mode-hook 'auto-revert-mode)

(global-set-key [S-f9] 'compile-last)

					;
; https://emacs.stackexchange.com/a/3106
(use-package "openwith"
  :config
  (setq openwith-associations '(("\\.pdf\\'" "evince" (file)))))
(openwith-mode t)

;; TODO: https://github.com/politza/pdf-tools

;; git clone https://github.com/yjwen/org-reveal.git

;; TODO
;; (add-to-list 'load-path "~/.emacs.d/lisp/org-reveal") 
;; (require 'ox-reveal)
;; (setq org-reveal-root "https://cdn.jsdelivr.net/reveal.js/3.0.0/")

;; https://github.com/justbur/emacs-which-key
(use-package "which-key"
  :config
  (which-key-mode))

;; https://github.com/emacsfodder/move-text
(use-package "move-text"
  :config
  (move-text-default-bindings))


;; TODO
;; https://github.com/company-mode/company-mode
;; (use-package "company-mode")
;; (company-mode)

(use-package "google-this"
  :config
  ;;(setq google-this-browse-url-function 'eww-browse-url)
  )
(google-this-mode)

(fringe-mode 0)

;; TODO
;; git clone https://github.com/vava/i3-emacs
;; (add-to-list 'load-path "~/.emacs.d/lisp/i3-emacs")
;; (require 'i3)
;; (require 'i3-integration)
;; (i3-one-window-per-frame-mode-on)

;;(set-default-font "-UKWN-Hermit-bold-normal-normal-*-*-*-*-*-m-0-iso10646-1 12" nil t)

  

(use-package "evil")
(evil-mode)
