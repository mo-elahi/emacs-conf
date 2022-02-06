;; using jedi language server for python
(use-package lsp-jedi
  :ensure t)


;; python support for lsp-mode
(use-package python-mode
  :mode "\\.py\\'"
  :hook (python-mode . lsp-deferred)
  :custom
  (dap-python-debugger 'debugpy)
  :config
  (setq python-indent-level 2)
  (require 'dap-python))


;; python virtual env setup
(use-package pyvenv
  :config
  (pyvenv-mode 1))
