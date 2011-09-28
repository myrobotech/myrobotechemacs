(require 'auto-complete-yasnippet)

;;(add-to-list 'ac-dictionary-directories myrobotech-emacs-auto-complete-dict-path)
(require 'auto-complete-config)
;;(ac-config-default)
(defun auto-complete-settings ()
  "Settings for `auto-complete'."
  ;; After do this, isearch any string, M-: (match-data) always
  ;; return the list whose elements is integer
  (global-auto-complete-mode 1)
 
  ;; 不让回车的时候执行`ac-complete', 因为当你输入完一个
  ;; 单词的时候, 很有可能补全菜单还在, 这时候你要回车的话,
  ;; 必须要干掉补全菜单, 很麻烦, 用M-j来执行`ac-complete'
  (apply-define-key
   ac-complete-mode-map
   `(("<return>"   nil)
     ("RET"        nil)
     ("M-j"        ac-complete)
     ("<C-return>" ac-complete)
     ("M-n"        ac-next)
     ("M-p"        ac-previous)))
 
  (setq ac-dwim t)
  (setq ac-candidate-max ac-candidate-menu-height)
) 
 

(provide 'auto-complete-settings)
