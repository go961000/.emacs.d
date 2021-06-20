(defun c-c++-mode-init()
  (setq c-basic-offset 4)
  (setq indent-tabs-mode t)
  (setq tab-width 4))

(add-hook 'c-mode-hook 'c-c++-mode-init)
(add-hook 'c++-mode-hook 'c-c++-mode-init)
