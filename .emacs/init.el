
;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)


;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


;; Minimal UI
(scroll-bar-mode  -1)
(tool-bar-mode    -1)
(tooltip-mode     -1)
(global-linum-mode 1)
(add-to-list 'default-frame-alist '(font . "Hack"))


;; Vim mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))


;; Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-vibrant t))


;; Helm
(use-package helm
  :ensure t
  :init
  (setq helm-split-window-inside-p t
	helm-move-to-line-cycle-in-source t
	helm-echo-input-in-header-line t
	helm-autoresize-max-height 0
	helm-autoresize-min-height 20)
  :config
(helm-mode 1))


;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))


;; Helm Projectile
(use-package helm-projectile
  :ensure t
  :init
  (setq helm-projectile-fuzzy-match t)
  (setq projectile-enable-caching t)
  :config
(helm-projectile-on))


;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode 1))

;; Splash screen
(setq inhibit-startup-screen t)
(setq initial-scratch-message ";; Happy Hacking")


;; Custom keybinding
(use-package general
  :ensure t
  :config (general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
  "SPC" '(helm-M-x :which-key "M-x")

  ;; Files
  "ff"  '(helm-find-files :which-key "find files")
  "fs"  '(save-buffer :which-key "save file")

  ;; Projects
  "pf"  '(projectile-find-file :which-key "project find file")  
  "pp"  '(helm-projectile-switch-project :which-key "switch project")
  "pb"  '(helm-projectile-switch-to-buffer :which-key "switch buffer")
  "pr"  '(helm-show-kill-ring :which-key "show kill ring")

  ;; Buffers
  "bb"  '(helm-mini :which-key "buffers list")
  "bd"  '(kill-this-buffer :which-key "kill buffer")

  ;; Window
  "wl"  '(windmove-right :which-key "move right")
  "wh"  '(windmove-left :which-key "move left")
  "wk"  '(windmove-up :which-key "move up")
  "wj"  '(windmove-down :which-key "move bottom")
  "w/"  '(split-window-right :which-key "split right")
  "w."  '(split-window-below :which-key "split bottom")
  "wd"  '(delete-window :which-key "delete window")

  ;; UI
  "ti"  '(text-scale-increase :which-key "text scale increase")
  "td"  '(text-scale-decrease :which-key "text scale decrease")

  ;; Lisp
  "le"  '(eval-last-sexp :which-key "emacs-lisp eval line")

  ;; Global
  "at"  '(ansi-term :which-key "open terminal")
  "qq"  '(kill-emacs :which-key "quit")
))


;; Language Deps and Niceties
(use-package alchemist :ensure t)
(use-package company :ensure t)
(use-package elixir-mode :ensure t)
(use-package flycheck :ensure t)
(use-package flycheck-mix :ensure t)
(use-package flycheck-credo :ensure t)
(use-package ggtags :ensure t)
(use-package ob-elixir :ensure t)
(use-package smartparens :ensure t)


;; Popup Windows to Mini-buffers
(use-package popwin :ensure t)


;; Powerline
(use-package spaceline
  :ensure t
  :init
  (setq powerline-default-separator 'slant)
  :config
  (spaceline-emacs-theme)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-evil-state-on))


;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode magit alchemist ag helm-ag which-key use-package helm evil-escape doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

