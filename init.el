;; loading package manager setup
(load "~/.emacs.d/confs/packages.el")

;; loading general configs setup
(load "~/.emacs.d/confs/settings.el")

;; loading evil mode setup
(load "~/.emacs.d/modes/evil.el")

;; loading dired mode setup
(load "~/.emacs.d/modes/dired.el")

;; loading org mode setup
(load "~/.emacs.d/modes/org.el")

;; loading lsp mode setup
(load "~/.emacs.d/modes/lsp-conf.el")

;; loading company mode setup
(load "~/.emacs.d/modes/company-conf.el")

;; loading yasnippet mode setup
(load "~/.emacs.d/modes/yas-conf.el")

;; loading projectile mode setup
(load "~/.emacs.d/modes/projectile.el")

;; loading magit mode setup
(load "~/.emacs.d/modes/magit.el")

;; loading web mode setup
(load "~/.emacs.d/modes/web.el")

;; loading python mode setup
(load "~/.emacs.d/modes/python.el")

;; loading smartparens setup
(load "~/.emacs.d/confs/smartparens.el")

;; loading treesitter config
(load "~/.emacs.d/modes/treesitter.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" default))
 '(package-selected-packages
   '(magit monokai-theme rjsx-mode tide dap-mode lsp-ivy evil lsp-mode lsp-treemacs company web-mode emmet-mode smartparens solarized-theme json-mode yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
