(use-package general
  :ensure t)

(use-package undo-tree
  :ensure t)

(use-package goto-chg
  :ensure t)

(defun write-kill ()
  (interactive)
  (save-buffer)
  (kill-current-buffer))

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

(use-package dash
  :ensure t)

(use-package s
  :ensure t)

(use-package origami
  :ensure t
  :config (global-origami-mode))

(use-package projectile
  :ensure t
  :general
  (:states 'normal
   :keymaps 'override
   "C-p" 'projectile-command-map)
  :init (setq projectile-completion-system 'ivy)
  :config (projectile-mode +1))

(use-package ivy
  :ensure t
  :init (setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
  :config (ivy-mode 1))

(use-package counsel
  :after ivy
  :ensure t
  :config (counsel-mode 1))

(use-package clojure-mode
  :ensure t)

(use-package cider
  :ensure t)

(use-package parinfer
  :ensure t
  :init (parinfer-mode))

