;; prevent emacs to touch this .emacs file
(setq custom-file "~/.emacs_custom")
(load-file custom-file)

;; add thrid party archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; disable distractive thingy
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)

;; line number
(column-number-mode t)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; enable ido mode and enable ido for M-x
(ido-mode t)
(ido-everywhere t)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-whitespace-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; enable simpc-mode for .c/.h files
(add-to-list 'load-path "~/.emacs_stuff/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-,") 'mc/mark-next-like-this)
(global-set-key (kbd "C-.") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)

;; move emacs temp files to ~/.emacs.d/
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))

(set-face-attribute 'default nil :font "Iosevka-24")
