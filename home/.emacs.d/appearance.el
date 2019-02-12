;; Remove GNU message
(setq inhibit-startup-message t)

;; Remove toolbar with new and open
(tool-bar-mode -1)

;; Remove scrollbars
(when (display-graphic-p) (set-scroll-bar-mode nil))

;; Line numbers
(setq linum-format "%d ")
(setq-default left-fringe-width  5)
(setq-default right-fringe-width  0)

(use-package linum-relative
  :ensure t
  :init
  (setq linum-relative-current-symbol "")
  :config (linum-relative-global-mode))

(use-package hlinum
  :ensure t
  :config (hlinum-activate))

;; Theming
(use-package color-theme-modern
  :ensure t
  :init (load-theme 'vim-colors t))

;; Font
(set-face-attribute 'default nil
                    :family "Fira Mono"
                    :height 160
                    :weight 'normal
                    :width 'normal)

