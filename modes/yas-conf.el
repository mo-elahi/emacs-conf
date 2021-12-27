(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(define-key yas-minor-mode-map (kbd "C-x z") 'yas-expand)
(yas-global-mode 1)
