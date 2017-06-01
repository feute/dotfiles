(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/rust-mode")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/base16-emacs/build")
(load-file "~/.emacs.d/themes/base16-emacs/base16-theme.el")

(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-theme 'base16-default-light t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)

(setq-default cursor-type 'bar)

(setq inhibit-startup-screen t)

; (set-face-font 'default "Fantasque Sans Mono-12")
(set-face-font 'default "DejaVu Sans Mono-9")

(require 'sr-speedbar)
(setq speedbar-use-images nil)

(require 'linum)
(setq linum-format "%3d ")
(set-face-background 'linum (face-background 'default))

(global-visual-line-mode t)

(electric-pair-mode)

;; web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.s?css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-style-padding 2)
(setq web-mode-script-padding 2)

(add-hook 'web-mode-hook 'emmet-mode) ;; Auto-start with web-mode

;; Rust mode
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; Spell settings
(ispell-change-dictionary "spanish" t)
(add-hook 'text-mode-hook 'flyspell-mode)

;; MELPA packages
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; Some boilerplate
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (emmet-mode web-mode go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
