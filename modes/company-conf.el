;; company-mode autocompletion tool
(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)
  :init
  (add-hook 'after-init-hook 'global-company-mode))


(use-package company-box
  :hook (company-mode . company-box-mode))
