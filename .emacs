;; -*- Emacs-Lisp -*-
;;
;; author <a href="http://rongmomo.info" target="_blank">Nancy Yang</a>
;;
(defconst myrobotech-emacs-path  "~/emacs/" "myrobotech emacs path")
(defconst myrobotech-emacs-conf-path  (concat myrobotech-emacs-path "conf/") "myrobotech emacs conf path")
(defconst myrobotech-emacs-module-path (concat myrobotech-emacs-path "module/") "myrobotech emacs module path")
(defconst myrobotech-emacs-misc-path  (concat myrobotech-emacs-path "misc/") "myrobotech emacs misc path")


(load (concat myrobotech-emacs-misc-path "myrobotech-subdirs"))
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-module-path)
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-conf-path)





(require 'php-mode)
