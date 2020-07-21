;;; ~/.doom.d/+ui.el -*- lexical-binding: t; -*-


(setq doom-theme 'doom-one)
(setq doom-font (font-spec :family "Monaco" :size 14))

(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-buffer-file-name-style 'file-name)

;;add icons to ivy
(add-hook 'after-init-hook 'all-the-icons-ivy-setup)
