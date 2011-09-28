(defun mode-line-face-settings ()
  "Face settings for `mode-line'."
    (custom-set-faces
     '(mode-line-buffer-id
       ((((class grayscale) (background light)) (:foreground "LightGray" :background "yellow" :weight bold))
        (((class grayscale) (background dark)) (:foreground "DimGray" :background "yellow" :weight bold))
        (((class color) (min-colors 88) (background light)) (:foreground "Orchid" :background "yellow"))
        (((class color) (min-colors 88) (background dark)) (:foreground "yellow" :background "HotPink3"))
        (((class color) (min-colors 16) (background light)) (:foreground "Orchid" :background "yellow"))
        (((class color) (min-colors 16) (background dark)) (:foreground "LightSteelBlue" :background "yellow"))
        (((class color) (min-colors 8)) (:foreground "blue" :background "yellow" :weight bold))
        (t (:weight bold)))))

(eval-after-load "mode-line-settings"
  '(progn
     (defface mode-line-lines-face
       '((((type tty pc)) :background "red" :foreground "white")
         (t (:background "dark slate blue" :foreground "yellow")))
       "Face used to highlight lines on mode-line.")))

(eval-after-load "faces"
  `(mode-line-face-settings))

(provide 'mode-line-face-settings)
