;デザイン
(setq default-frame-alist
      (append
       (list
        '(background-color . "#221122")
        '(foreground-color . "#F0F8FF")
        '(cursor-color . "#FFFFFF")
	'(alpha . 80)
        )
       default-frame-alist)
      )
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "#191970"))
    (((class color)
      (background light))
     (:background "ForestGreen"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)

;;; 画像ファイルを表示
(auto-image-file-mode t)
;;; メニューバーを消す
(menu-bar-mode -1)
;;; ツールバーを消す
(tool-bar-mode -1)
;;; カーソルの点滅を止める
(blink-cursor-mode 0)
;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)

(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         spaces         ; スペース
                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

;; スペースは全角のみを可視化
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))

(global-whitespace-mode 1)

(defvar my/bg-color "#232323")
(set-face-attribute 'whitespace-trailing nil
                    :background my/bg-color
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background my/bg-color
                    :foreground "LightSkyBlue"
                    :underline t)
(set-face-attribute 'whitespace-space nil
                    :background my/bg-color
                    :foreground "GreenYellow"
                    :weight 'bold)
(set-face-attribute 'whitespace-empty nil
                    :background my/bg-color)

;;; 現在行を目立たせる
(global-hl-line-mode)
;;バックアップを作らない
(setq backup-inhibited t)
;;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)
;;; 最終行に必ず一行挿入する
(setq require-final-newline t)
;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)
;;行数を表示
(global-linum-mode t)
;;括弧の色のカスタマイズ
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
