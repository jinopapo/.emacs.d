;; Localeに合わせた環境の設定
(set-locale-environment nil)
;; C-hでバックスペース
(keyboard-translate ?\C-h ?\C-?)
;; 基本
(require 'redo+)
(define-key global-map (kbd "M-?") 'help-for-help)        ; ヘルプ
(define-key global-map (kbd "C-z") 'undo)                 ; undo
(define-key global-map (kbd "M-z") 'redo)                 ; redo
(define-key global-map (kbd "C-c i") 'indent-region)      ; インデント
(define-key global-map (kbd "C-c C-i") 'hippie-expand)    ; 補完
(define-key global-map (kbd "C-c ;") 'comment-dwim)       ; コメントアウト
(define-key global-map (kbd "M-C-g") 'grep)               ; grep
(define-key global-map (kbd "C-[ M-C-g") 'goto-line)      ; 指定行へ移動
(define-key global-map (kbd "C-c C-s") 'replace-string)   ; 文字の置換
(define-key global-map (kbd "C-m") 'newline-and-indent)   ; 文字の置換
(define-key global-map (kbd "C-j") 'newline)   ; 文字の置換
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;空白削除
(global-set-key "\M-w" 'clipboard-kill-ring-save)  ; クリップボードにコピー
(global-set-key "\C-w" 'clipboard-kill-region)     ; 切り取ってクリップボードへ
(global-set-key [f5] 'eval-buffer)     ; 設定を更新
;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq kill-whole-line t)

;; ウィンドウ移動
;; 次のウィンドウへ移動
(define-key global-map (kbd "C-M-n") 'next-multiframe-window)
;; 前のウィンドウへ移動
(define-key global-map (kbd "C-M-p") 'previous-multiframe-window)
