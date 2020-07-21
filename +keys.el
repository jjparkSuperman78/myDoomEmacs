;;; ~/.doom.d/+keys.el -*- lexical-binding: t; -*-

;;add custom key bindings
(map! "M-s-o" #'er/expand-region)
(map! "M-s-p" #'er/contract-region)
(map! "C-h" #'evil-window-left)
(map! "C-j" #'evil-window-down)
(map! "C-k" #'evil-window-up)
(map! "C-l" #'evil-window-right)
(map! "M-s-f" #'magit-ediff-show-working-tree)
;;means go back, go references
(map! :n "gb" #'evil-jump-backward)
(map! :n "gr" #'+lookup/references)
(map! :leader :prefix "t" :desc "Capture Code with Carbon now" "t" #'carbon-now-sh)
(map! :leader :prefix "f" :desc "Open Shell init file on other windows" "i" #'er-find-shell-init-file)
(map! :leader :prefix "s" :desc "Search Google.com" "g" #'google-this)
(map! :leader :prefix "o" :desc "Open news form RSS with ELfeed" "n" #'elfeed-update)
(map! :leader :desc "new project search file" "sp" #'rg-project)

;; evil multi edit recommanded setting
(define-key evil-visual-state-map (kbd "M-s-r") 'evil-multiedit-match-all)
(define-key evil-normal-state-map (kbd "M-s-n") 'evil-multiedit-match-and-next)
(define-key evil-visual-state-map (kbd "M-s-n") 'evil-multiedit-match-and-next)
(define-key evil-insert-state-map (kbd "M-s-n") 'evil-multiedit-toggle-marker-here)
(define-key evil-normal-state-map (kbd "M-s-p") 'evil-multiedit-match-and-prev)
(define-key evil-visual-state-map (kbd "M-s-p") 'evil-multiedit-match-and-prev)
(define-key evil-visual-state-map (kbd "C-M-D") 'evil-multiedit-restore)
(define-key evil-motion-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)
