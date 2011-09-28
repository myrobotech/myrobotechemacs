;;(require 'auto-complete-yasnippet)

;;(add-to-list 'ac-dictionary-directories myrobotech-emacs-auto-complete-dict-path)
(require 'auto-complete-config)
;;(ac-config-default)
(global-auto-complete-mode 1)
(eal-define-keys                                        
 'ac-complete-mode-map                                  
 `(("<return>"   nil)                                   
   ("RET"        nil)                                   
   ("M-j"        ac-complete)))  
 

(provide 'auto-complete-settings)
