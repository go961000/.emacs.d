; https://github.com/emacs-jp/replace-colorthemes/

(load-theme 'hober t t)
(enable-theme 'hober)

;
(tool-bar-mode nil)
(menu-bar-mode nil)
(setq inhibit-startup-screen t)

(blink-cursor-mode nil)
(column-number-mode t)
(line-number-mode t)
(require 'hl-line)

;;;
;(setq scroll-step 1)
(set-scroll-bar-mode 'right)

;
(setq initial-frame-alist
      (append (list
               '(width . 100)
               '(height . 40)
               )
              initial-frame-alist))

(setq default-frame-alist initial-frame-alist)

;; sml-mode
(require 'sml-modeline)
(sml-modeline-mode t)


;;(defface my-face-r-1 '((t (:background "gray15"))) nil)
(defface my-face-b-1 '((t (:background "gray"))) nil)
(defface my-face-b-2 '((t (:background "gray26"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
;;(defvar my-face-r-1 'my-face-r-1)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)

(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-b-2 append)
     ("　" 0 my-face-b-1 append)
     ("[ \t]+$" 0 my-face-u-1 append)
     ;;("[\r]*\n" 0 my-face-r-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
