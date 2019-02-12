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

(use-package evil-collection
  :after evil
  :ensure t
  :config (evil-collection-init))

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
