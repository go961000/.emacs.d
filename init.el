(load (concat user-emacs-directory "rules/10_package-installer.el"))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load)

; init.el end
