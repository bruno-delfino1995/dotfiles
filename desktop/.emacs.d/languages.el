(setq lsp-keymap-prefix "C-c l")
(use-package lsp-mode
  :ensure t
  :hook
  (terraform-mode . lsp)
  (go-mode . lsp)
  :commands lsp)

(use-package yaml-mode
  :ensure t
  :mode (("\\.yaml" . yaml-mode)
         ("\\.yml" . yaml-mode)))

(use-package terraform-mode
  :ensure t
  :mode ("\\.tf" . terraform-mode))

(use-package go-mode
  :ensure t
  :mode ("\\.go" . go-mode))

(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode))
