;; treesitter setup
(require 'tree-sitter)
(require 'tree-sitter-langs)

(tree-sitter-require 'tsx)
(add-to-list 'tree-sitter-major-mode-language-alist '(typescript-mode . tsx))
(add-hook 'typescript-mode-hook #'tree-sitter-hl-mode)
