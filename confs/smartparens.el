;; Auto pair package
(require 'smartparens-config)

;; auto pair hooking
(add-hook 'typescript-mode-hook #'smartparens-mode)
(add-hook 'python-mode-hook #'smartparens-mode)
(add-hook 'css-mode-hook #'smartparens-mode)
(add-hook 'scss-mode-hook #'smartparens-mode)
(add-hook 'sass-mode-hook #'smartparens-mode)
