;; -*- Emacs-Lisp -*-

;; Time-stamp: <2010-10-11 20:00:55 Monday by taoshanwen>

(set-default-font "Monaco 13")
(when (and window-system is-after-emacs-23)
  (require 'myrobotech-fontset-win)
  (if mswin
      ;; (huangq-fontset-courier 17)
      (huangq-fontset-consolas 17)
    ;; (huangq-fontset-dejavu 17)))
    ;; (huangq-fontset-fixedsys 17)
    (set-default-font "Monospace 11")))

(provide 'font-settings)
