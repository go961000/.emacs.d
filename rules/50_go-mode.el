(require 'go-mode)

;(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'flycheck-mode)

(add-hook 'go-mode-hook
          (lambda()
            (local-set-key (kbd "M-.") 'godef-jump)
            (setq indent-tabs-mode t)
            (setq tab-width 4)))
