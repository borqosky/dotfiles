
;; Add package sources
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Save backup files in a dedicated directory
(setq backup-directory-alist '(("." . "~/.saves")))

(require 'ido) (ido-mode t)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(package-initialize)

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(add-hook 'python-mode-hook 'jedi:setup)

(electric-pair-mode +1)

;; Set Linum-Mode on
(global-linum-mode t)
 
;; Linum-Mode and add space after the number
(setq linum-format "%d ")

(global-hl-line-mode 0)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

