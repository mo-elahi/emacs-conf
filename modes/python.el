;; python support for lsp-mode
(use-package python-mode
  :mode "\\.py\\'"
  :hook (python-mode . lsp-deferred)
  :config
  (setq python-indent-level 2))
