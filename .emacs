;; Requisites: Emacs >= 24
(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-refresh-contents)

;; Save backup files in a dedicated directory
(setq backup-directory-alist '(("." . "~/.saves")))

(require 'ido) (ido-mode t)

(add-hook 'python-mode-hook 'jedi:setup)

(electric-pair-mode 1)

;; Set Linum-Mode on
(global-linum-mode t)
 
;; Linum-Mode and add space after the number
(setq linum-format "%d ")

(global-hl-line-mode 0)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
