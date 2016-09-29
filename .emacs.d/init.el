(require 'package)

;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Orgを追加
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; 初期化
(package-initialize)

;; color-theme
(when(require 'color-theme)
  (color-theme-initialize)
  (when(require 'color-theme-solarized)
    (color-theme-solarized-dark)))


;; ここでインストールしたパッケージのロードパスを通す
(add-to-list 'load-path "~/.emacs.d/elpa/jedi-0.1.2")
(require 'jedi)
(jedi:setup)
(define-key jedi-mode-map (kbd "<C-tab>") nil) ;;C-tabはウィンドウの移動に用いる
(setq jedi:complete-on-dot t)







