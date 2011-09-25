;; -*- Emacs-Lisp -*-
;;
;; author <a href="http://rongmomo.info" target="_blank">Nancy Yang</a>
;;
(defconst myrobotech-emacs-path  "~/emacs/" "myrobotech emacs path")
(defconst myrobotech-emacs-conf-path  (concat myrobotech-emacs-path "conf/") "myrobotech emacs conf path")
(defconst myrobotech-emacs-module-path (concat myrobotech-emacs-path "modules/") "myrobotech emacs module path")
(defconst myrobotech-emacs-misc-path  (concat myrobotech-emacs-path "misc/") "myrobotech emacs misc path")


(load (concat myrobotech-emacs-misc-path "myrobotech-subdirs"))
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-module-path)
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-conf-path)
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-misc-path)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(color-theme-aliceblue)

(require 'misc-settings)
(require 'emacs-wiki-settings)

(require 'php-mode)

(require 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/bin/bash")
(global-set-key [f9] 'shell-pop)

