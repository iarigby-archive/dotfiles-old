;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
(package! openwith)
(package! spacemacs-theme)
(package! bind-key)
(package! doom-themes)
(package! ox-gfm)
(after! org (require 'ox-gfm nil t))
(package! material-theme)
(package! ox-pandoc)
