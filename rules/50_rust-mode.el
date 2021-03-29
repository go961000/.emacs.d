; $ rustup update
; $ rustup component add rls rust-analysis rust-src

(use-package rustic
 :ensure t
 :defer t
 :init
 (add-hook ‘rustic-mode-hook
 ‘(lambda ()
 (racer-mode t)
 (dumb-jump-mode t)
 (highlight-symbol-mode t)
 (rainbow-delimiters-mode t)
 (smartparens-mode t)))
  :mode (“\\.rs$” . rustic-mode)
 :commands (rustic-mode)
 :config
 (use-package quickrun
 :defer t
 :ensure t)
 (use-package racer
 :defer t
 :ensure t)
 (use-package lsp-mode
 :ensure t))
