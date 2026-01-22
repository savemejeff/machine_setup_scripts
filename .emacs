;; prevent emacs to touch this .emacs file
(setq custom-file "~/.emacs_custom")
(load-file custom-file)

(menu-bar-mode -1)
(column-number-mode t)
(global-display-line-numbers-mode t)
(ido-mode t)
(global-whitespace-mode t)

(setq display-line-numbers-type 'relative)
(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; enable simpc-mode for .c/.h files
(add-to-list 'load-path "~/.emacs_stuff/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
