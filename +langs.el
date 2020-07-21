;;; ~/.doom.d/+langs.el -*- lexical-binding: t; -*-
(defun custom-web-mode ()
  "Custom hooks for web-mode"
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
)

(setq typescript-indent-level 2)
(setq json-reformat:indent-width 2)
(setq prettier-js-args '("--single-quote"))

(add-hook 'vue-mode-hook #'lsp!)
(add-hook 'web-mode-hook 'custom-web-mode)

(add-to-list 'auto-mode-alist '("\\.env\\..*\\'" . dotenv-mode)) ;; for optionally supporting additional file extensions such as `.env.test' with this major mode
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode)) ;; for optionally supporting additional file extensions such as `.env.test' with this major mode

;; (use-package vue-mode
;;   :config
;;   ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
;;   (setq mmm-submode-decoration-level 0))
;; (add-to-list 'auto-mode-alist '("\\.vue'" . vue-mode))
;; add tabnine plugin

;; gitlab-ci-mode-flycheck
;; TODO: 왜인지 모르겠는데 작동 안함. 제작자에게 문의 해야 할듯
;; LINK: https://gitlab.com/
;; (use-package gitlab-ci-mode-flycheck
;;   :after flycheck gitlab-ci-mode
;;   :config
;;   (setq gitlab-ci-url "https://gitlab.jjsoft.kr")
;;   (setq gitlab-ci-api-token "azgcqQ6z-GMnDzygRTMA")
;;   :init
;;   (gitlab-ci-mode-flycheck-enable))
(add-to-list 'company-backends #'company-tabnine)

;;make support CamelCase syntax
(global-subword-mode 1)

;;dash docs setup
;;무슨 이유인지 모르겠으나 dash docs를 자동 인식 못함. 수동으로 추가해줌
(setq dash-docs-docsets (list "VueJS" "TypeScript" "MomentJS" "NodeJS" "Stylus" "Pug" "HTML" "CSS"
  "Express" "Mongoose" "ElasticSearch" "Docker" "Jekyll" "Mocha"
  "Bootstrap_4" "Bootstrap_5" "jQuery"))

(setq company-idle-delay 0.1)


;; make magit-forge support gitlab private instance
;; (use-package forge
;;   :after magit
;;   :config
;;   (add-to-list 'forge-alist '("gitlab.jjsoft.kr" "gitlab.jjsoft.kr/api/v4" "gitlab.jjsoft.kr" forge-gitlab-repository))
;;   (setq auth-sources '((:source "~/.authinfo")))
;;   (setq gitlab.host "https://gitlab.jjsoft.kr")
;;   (setq gitlab.user "jjpark")
;;   (setq ghub-use-workaround-for-emacs-bug 'force)
;; )
;; (setq gitlab-host "https://gitlab.jjsoft.kr"
;;       gitlab-token-id "azgcqQ6z-GMnDzygRTMA"
;;       )

;; show gutter everywhre
(setq global-git-gutter-mode +1)
