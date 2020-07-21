;;; ~/.doom.d/general.el -*- lexical-binding: t; -*-
(setq user-full-name "Jaejin Park"
      user-mail-address "jjpark78@gmail.com")

(setq-default tab-width 2)
(setq +ivy-buffer-preview nil)
(setq dired-dwim-target t)

;; Restore Frame size and location, if we are using gui emacs
(if window-system
  (progn
    (add-hook 'after-init-hook 'load-framegeometry)
    (add-hook 'kill-emacs-hook 'save-framegeometry))
)
