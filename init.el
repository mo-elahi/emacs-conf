(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Font Face
(set-face-attribute 'default nil :font "Fira Code Retina" :height 150)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;; Line number for editor
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; icons
(use-package all-the-icons)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(emmet-mode web-mode smartparens python-mode javascript-mode rainbow-delimiters evil-nerd-commenter typescript-mode company-box company lsp-treemacs lsp-ui lsp-mode which-key doom-modeline use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Helper for key bindings
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))


;; lsp-mode config
(defun efs/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . efs/lsp-mode-setup)
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  :config
  (lsp-enable-which-key-integration t))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-position 'bottom))

(use-package lsp-treemacs
  :after lsp)


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
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))

;; web dev support for lsp-mode
(use-package web-mode
  :mode ("\\.html\\'" "\\.css\\'")
  :hook (web-mode . lsp-deferred)
  :config
  (setq web-indent-level 2))

;; javascript and typescript support for lsp-mode
(use-package typescript-mode
  :mode ("\\.ts\\'" "\\.js\\'")
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))

;; python support for lsp-mode
(use-package python-mode
  :mode "\\.py\\'"
  :hook (python-mode . lsp-deferred)
  :config
  (setq python-indent-level 2))

;; some useful features
(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Auto pair package
(require 'smartparens-config)

;; auto pair hooking
(add-hook 'typescript-mode-hook #'smartparens-mode)
(add-hook 'python-mode-hook #'smartparens-mode)

;; emmet-mode hooks
(add-hook 'web-mode-hook 'emmet-mode)
