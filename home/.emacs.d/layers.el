;; # Loading Order
;;      - layers.el
;;      - packages.el
;;      - funcs.el
;;      - config.el
;;      - keybindings.el
(load "~/.emacs.d/layers/+vim/vinegar/packages.el")
(load "~/.emacs.d/layers/+vim/vinegar/funcs.el")
(load "~/.emacs.d/layers/+vim/vinegar/config.el")
(load "~/.emacs.d/layers/+vim/vinegar/keybindings.el")
(vinegar/init-dired+)
