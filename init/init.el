;; Configuration files for GNU Emacs
;; 2025, Ivan Kmeťo
;;
;; CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
;; https://creativecommons.org/publicdomain/zero/1.0/


(setq backup-directory-alist '(("." . "~/.emacs.d/backups/")))

(setq custom-file "~/.emacs.d/init.garbage.el")
(load-file custom-file)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defun autoinstall-package (package)
  (unless (package-installed-p package)
    (package-install package)))

(autoinstall-package 'monochrome-theme)

(load-theme 'monochrome t)

(set-language-environment "UTF-8")

(defun get-default-font ()
  (cond
   ;;((eq system-type 'windows-nt) "Courier New Bold-11")
   ((eq system-type 'windows-nt) "Cascadia Mono-10")
   ;;((eq system-type 'gnu/linux) "Monospace-11")))
   ((eq system-type 'gnu/linux) "Cascadia Mono-13")))
(add-to-list 'default-frame-alist `(font . ,(get-default-font)))

(setq frame-title-format "%f - GNU Emacs")
(setq inhibit-startup-screen t)
(toggle-frame-maximized)
(fringe-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(setq visible-bell t)
(setq ring-bell-function 'ignore)
(global-display-line-numbers-mode 1)
(ido-mode 1)

(setq-default show-trailing-whitespace t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-basic-offset 4)
(setq c-basic-indent 4)
