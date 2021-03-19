;; Minimal UI
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message ";; Happy Hacking")

(menu-bar-mode    -1)
(scroll-bar-mode  -1)
(tool-bar-mode    -1)
(tooltip-mode     -1)
(global-linum-mode 1)
(column-number-mode )

;; Fancy titlebar for MacOS

;; Font
(add-to-list 'default-frame-alist '(font . "JetBrains Mono-12"))
(add-to-list 'default-frame-alist '(line-spacing . 0.2))

(setq visual-bell t)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

  ;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package evil
  :config 
  (evil-mode 1))

(use-package org-evil)

(use-package doom-themes
  :init (load-theme 'doom-vibrant t))


(use-package counsel
  :after ivy
  :config (counsel-mode))

(use-package ivy
  :defer 0.1
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  :config (ivy-mode))

(use-package ivy-rich
  :after ivy
  :custom
  (ivy-virtual-abbreviate 'full
                          ivy-rich-switch-buffer-align-virtual-buffer t
                          ivy-rich-path-style 'abbrev)
  :config
  (ivy-set-display-transformer 'ivy-switch-buffer
                               'ivy-rich-switch-buffer-transformer))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
 
(use-package which-key
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 0.1))


;; Custom keybinding
(use-package general
  :config (general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  ":"   '(counsel-M-x :which-key "M-x")
  "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
  "["   '(switch-to-prev-buffer :which-key "previous buffer")
  "]"   '(switch-to-next-buffer :which-key "next buffer")
  ;; "pf"  '(helm-find-file :which-key "find files")

  ;; eval
  "eb"  '(eval-buffer :which-key "eval buffer")

  ;; Buffers
  ;; "bb"  '(list-buffers :which-key "buffers list") TODO: Make this better
  "fs"  '(save-buffer :which-key "save buffer")

  ;; Window
  "wl"  '(windmove-right :which-key "move right")
  "wh"  '(windmove-left :which-key "move left")
  "wk"  '(windmove-up :which-key "move up")
  "wj"  '(windmove-down :which-key "move bottom")
  "wL"  '(split-window-right :which-key "split right")
  "wJ"  '(split-window-below :which-key "split bottom")
  "wd"  '(delete-window :which-key "delete window")

  ;; Others
  "at"  '(ansi-term :which-key "open terminal")
  "qq"  '(kill-emacs :which-key "quit")
))
