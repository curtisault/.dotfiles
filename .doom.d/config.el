;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Load theme
(load-theme 'doom-vibrant t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

(use-package racer
  :requires rust-mode

  :init (setq racer-rust-src-path
              (concat
               (string-trim
                (shell-command-to-string "rustc --print sysroot")) "/lib/rustlib/src/rust/src"))
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode))
