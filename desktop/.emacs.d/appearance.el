;; remove gnu message
(setq inhibit-startup-message t)

;; remove toolbar, scrollbar and menubar
; NOTE: keep this order because of a bug on emacs - https://emacs.stackexchange.com/questions/48785/scroll-bar-area-remains-blacked-out-after-launching-with-scroll-bar-mode-dis
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

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
(setq display-line-numbers-type 'visual)
; prevents line number bar to grow, keeps it giant even when at the beginning
; of a thousand lines file
(setq display-line-numbers-width-start t)
(global-display-line-numbers-mode 1)

;; focus
(use-package dimmer
  :ensure t
  :init
  (setq dimmer-fraction 0.8)
  :config (dimmer-mode 1))

;; disable line wrapping
(set-default 'truncate-lines t)

;; icons
(use-package all-the-icons
  :ensure t)

;; modeline
(use-package doom-modeline
  :ensure t
  :config (doom-modeline-mode 1))
