; easily configure keybindings
(use-package general
  :ensure t)

; record a tree instead of stack for undo
; [required-by: evil]
(use-package undo-tree
  :ensure t)

; allows go to changes
; [required-by: evil]
(use-package goto-chg
  :ensure t)

(defun write-kill ()
  (interactive)
  (save-buffer)
  (kill-current-buffer))

; vim bindings for emacs
(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll 1)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)
  (evil-ex-define-cmd "k" 'kill-current-buffer)
  (evil-ex-define-cmd "wk" 'write-kill))

(use-package evil-surround
  :after evil
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config (evil-collection-init))

; show search progression through matches (x/y)
(use-package anzu
  :ensure t
  :config (global-anzu-mode 1))

; anzu bindings for evil
(use-package evil-anzu
  :after evil
  :ensure t)

; [required-by: origami]
(use-package dash
  :ensure t)

; [required-by: origami]
(use-package s
  :ensure t)

; enable foldings
(use-package origami
  :ensure t
  :config (global-origami-mode 1))

; project interation
(use-package projectile
  :ensure t
  :config (projectile-mode 1))

; completion engine
(use-package ivy
  :ensure t
  :init (setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
  :config (ivy-mode 1))

; completion on more places
(use-package counsel
  :after ivy
  :ensure t
  :config (counsel-mode 1))

[required-by: dashboard]
(use-package page-break-lines
  :ensure t)

; nice startup buffer
(use-package dashboard
  :ensure t
  :init
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-show-shortcuts t)
  (setq dashboard-items '((projects . 5)
                          (bookmarks . 5)
                          (recents  . 5)))
  :config (dashboard-setup-startup-hook))

; enable extra functionality for dired by default
(require 'dired-x)
