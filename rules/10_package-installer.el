(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'cl)

(defun check-version(major minor)
  (if (or (> emacs-major-version major)
          (and (= emacs-major-version major) (>= emacs-minor-version minor)))
      'true 'false))

(setq tmp-installing-package-list '())

(if (check-version 25 2)
    (setq tmp-installing-package-list
          (append tmp-installing-package-list
                  '(
                    flycheck
                    sml-modeline
                    init-loader
                    auto-complete
                    color-theme-modern
                    global-tags
                    markdown-mode
                    markdown-mode+
                    python-mode
                    epc
                    python-environment
                    jedi
                    go-mode
                    go-autocomplete
                    qml-mode
                    vue-mode
                    ))))

(if (check-version 26 1)
    (setq tmp-installing-package-list
          (append tmp-installing-package-list
                  '(
                    lsp-mode
                    lsp-ui
                    rustic
                    ))))

(defvar installing-package-list tmp-installing-package-list)

(message "%s" installing-package-list)

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
