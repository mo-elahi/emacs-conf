;; loading package manager setup
(load "~/.emacs.d/confs/packages.el")

;; loading general configs setup
(load "~/.emacs.d/confs/settings.el")

;; loading evil mode setup
(load "~/.emacs.d/modes/evil.el")

;; loading dired mode setup
(load "~/.emacs.d/modes/dired.el")

;; loading lsp mode setup
(load "~/.emacs.d/modes/lsp-conf.el")

;; loading company mode setup
(load "~/.emacs.d/modes/company-conf.el")

;; loading yasnippet mode setup
(load "~/.emacs.d/modes/yas-conf.el")

;; loading projectile mode setup
(load "~/.emacs.d/modes/projectile.el")

;; loading web mode setup
(load "~/.emacs.d/modes/web.el")

;; loading python mode setup
(load "~/.emacs.d/modes/python.el")

;; loading smartparens setup
(load "~/.emacs.d/confs/smartparens.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-ivy evil lsp-mode lsp-treemacs company web-mode emmet-mode smartparens solarized-theme json-mode yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
