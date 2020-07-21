;;; ~/.doom.d/+etcs.el -*- lexical-binding: t; -*-

;;make doom emacs scrolls little bit faster
(setq scroll-conservatively 101)
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
(setq display-line-numbers-type 'nil)

;;lsp performance tunne
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
(setq lsp-idle-delay 0.100)

;; misc editor setup
(dimmer-mode t)
(setq dimmer-fraction 0.1)
(beacon-mode 1)
(nyan-mode 1)
(setq nyan-bar-length 18)
(setq nyan-animate-nyancat t)
(setq confirm-kill-processes nil)
(setq default-input-method "korean-hangul")
