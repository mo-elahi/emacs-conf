;; loading package manager setup
(load "~/.emacs.d/confs/packages.el")

;; loading general configs setup
(load "~/.emacs.d/confs/settings.el")

;; loading evil mode setup
(load "~/.emacs.d/modes/evil.el")

;; loading lsp mode setup
(load "~/.emacs.d/modes/lsp-conf.el")

;; loading company mode setup
(load "~/.emacs.d/modes/company-conf.el")

;; loading yasnippet mode setup
(load "~/.emacs.d/modes/yas-conf.el")

;; loading lisp slime mode setup
(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;; loading web mode setup
(load "~/.emacs.d/modes/web.el")

;; loading python mode setup
(load "~/.emacs.d/modes/python.el")

;; loading smartparens setup
(load "~/.emacs.d/confs/smartparens.el")


