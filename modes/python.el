;; using jedi language server for python
(use-package lsp-jedi
  :ensure t)


;; python support for lsp-mode
(use-package python-mode
  :mode "\\.py\\'"
  :hook (python-mode . lsp-deferred)
  :config
  (setq python-indent-level 2))

