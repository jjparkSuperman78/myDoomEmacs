;;; ~/.doom.d/+tools.el -*- lexical-binding: t; -*-

;;set evil-snipe
(setq evil-snipe-scope 'whole-visible)
(setq evil-snipe-repeat-scope 'whole-visible)

;; wakatime api
(setq wakatime-api-key "0a5afca5-0d16-4165-9053-ffdc61de9bc4")
(global-wakatime-mode)

;;etc ui, effects, usefule settings
(setq carbon-now-sh-baseurl "https://carbon.now.sh/8kbKErjB7eLxKGBvr7qS")

;; show git info dired
;; (add-hook 'dired-mode-hook 'dired-git-mode)
(add-hook 'dired-after-readin-hook 'dired-git-info-auto-enable)

;; setup elfeed news
(setq elfeed-feeds '(
                     "https://planet.emacslife.com/atom.xml"
                     "https://www.jw.org/ko/news/%EC%97%AC%ED%98%B8%EC%99%80%EC%9D%98-%EC%A6%9D%EC%9D%B8/rss/NewsSubsectionRSSFeed/feed.xml"
))

;; runs feed update every 1 hour
(run-at-time nil (* 1 60 60) #'elfeed-update)
