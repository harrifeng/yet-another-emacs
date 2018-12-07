;;; package --- Summary
;;; Commentary:
;;; Code:
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(package-initialize)

(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/"))
(add-to-list 'package-archives '("org" . "http://elpa.emacs-china.org/org/") t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;increase garbage collection threshold for startup only
(setq gc-cons-threshold 64000000)
(add-hook 'after-init-hook #'(lambda ()
                               ;; restore after startup
                               (setq gc-cons-threshold 800000)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("eb02853c4a789d2cd00cc0c6e8e37532690fe70b5fddfc24e259f291048c5ad1" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" default)))
 '(ecb-options-version "2.50")
 '(indicate-empty-lines t)
 '(package-selected-packages (quote (skewer-mode use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;;; init.el ends here
