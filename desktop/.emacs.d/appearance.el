;; remove gnu message
(setq inhibit-startup-message t)

;; remove toolbar with new and open
(tool-bar-mode -1)

;; remove scrollbars
(when (display-graphic-p) (set-scroll-bar-mode nil))

;; Theming
(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-tomorrow-night t))


;; set the cursor color based on the evil state
(defvar base16-colors base16-tomorrow-night-colors)
(setq evil-emacs-state-cursor   `(,(plist-get base16-colors :base0D) box)
  evil-insert-state-cursor  `(,(plist-get base16-colors :base0D) bar)
  evil-motion-state-cursor  `(,(plist-get base16-colors :base0E) box)
  evil-normal-state-cursor  `(,(plist-get base16-colors :base0B) box)
  evil-replace-state-cursor `(,(plist-get base16-colors :base08) bar)
  evil-visual-state-cursor  `(,(plist-get base16-colors :base09) box))

;; disable cursor blink
(blink-cursor-mode -1)
(global-hl-line-mode 1)

;; font
(set-face-attribute 'default nil
  :family "Fira Mono"
  :height 160
  :weight 'normal
  :width 'normal)

;; line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; focus
(use-package dimmer
  :ensure t
  :init
  (setq dimmer-fraction 0.8)
  :config (dimmer-mode 1))

;; disable line wrapping
(set-default 'truncate-lines t)

