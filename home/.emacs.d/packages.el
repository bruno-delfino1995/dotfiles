(use-package general
  :ensure t)

(use-package undo-tree
  :ensure t)

(use-package goto-chg
  :ensure t)

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll 1)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-surround
  :after evil
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config (evil-collection-init))

(use-package projectile
  :ensure t
  :general
  (:states 'normal
   :keymaps 'override
   "C-p" 'projectile-command-map)
  :init
  (setq projectile-completion-system 'ivy)
  :config (projectile-mode +1))

(use-package ivy
  :ensure t
  :config (ivy-mode 1))

(use-package counsel
  :ensure t
  :config (counsel-mode 1))
