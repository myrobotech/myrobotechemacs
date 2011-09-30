;; -*- Emacs-Lisp -*-
;;
;; author <a href="http://rongmomo.info" target="_blank">Nancy Yang</a>
;;
(defconst myrobotech-emacs-path  "~/emacs/" "myrobotech emacs path")
(defconst myrobotech-emacs-conf-path  (concat myrobotech-emacs-path "conf/") "myrobotech emacs conf path")
(defconst myrobotech-emacs-module-path (concat myrobotech-emacs-path "modules/") "myrobotech emacs module path")
(defconst myrobotech-emacs-misc-path  (concat myrobotech-emacs-path "misc/") "myrobotech emacs misc path")
(defconst myrobotech-emacs-yasnippet-snippets-path (concat myrobotech-emacs-path "conf.d/snippets/") "myrobotech emacs yasnippet snippets path")
(defconst myrobotech-emacs-auto-complete-dict-path (concat myrobotech-emacs-path "conf.d/auto-complete/dict/") "myrobotech emacs auto complete dict path")

(load (concat myrobotech-emacs-misc-path "myrobotech-subdirs"))
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-module-path)
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-conf-path)
(myrobotech-add-subdirs-to-load-path myrobotech-emacs-misc-path)

(require 'util)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(color-theme-aliceblue)


(require 'flymake-shell-settings)
(add-hook 'sh-mode-hook 'flymake-shell-load)

;;  display the buffer-relative positions of flymake errors and warnings on the fringe
(require 'rfringe)

(require 'flymake-php-settings)
(custom-set-variables
 '(flymake-php-on t))



(require 'misc-settings)
(require 'emacs-wiki-settings)

(require 'php-mode)

(require 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/bin/bash")
(global-set-key [f9] 'shell-pop)

(require 'icicles)
(icy-mode 1)

    (global-set-key (kbd "C-x C-b") 'ibuffer)
    (autoload 'ibuffer "ibuffer" "List buffers." t)


;; highlight current line
(global-hl-line-mode 1)

(require 'yasnippet-settings)

(global-linum-mode 1)



;; for cursor-chg.el
(require 'cursor-chg)  ; Load this library
(change-cursor-mode 1) ; On for overwrite/read-only/input mode
(toggle-cursor-type-when-idle 1) ; On when idle


(require 'mode-line-settings)


(require 'auto-complete-settings)


(require 'time-stamp-settings)

(require 'grep-settings)

(require 'recent-jump-settings)

(require 'term-settings)
(require 'multi-term-settings)



;; 在Emacs中使用真正的浏览器, 非常震撼
(when is-after-emacs-24
   (require 'ezbl-settings))

(require 'session-settings)
(require 'wcy-desktop-settings)

(require 'mark-settings)


;; 用M-x执行某个命令的时候，在输入的同时给出可选的命令名提示
(require 'icomplete-settings)
;;
;; ;; minibuffer中输入部分命令就可以使用补全
(unless is-after-emacs-23
  (partial-completion-mode 1))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'font-settings)

(require 'emacs-server-settings)

(require 'isearch-settings)

(require 'recentf-settings)

(require 'nav)

(require 'cedet)
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(global-semantic-idle-scheduler-mode 1)
(global-semanticdb-minor-mode 1)
(semantic-load-enable-minimum-features 1)

(require 'ecb)

(require 'maxframe-settings)
