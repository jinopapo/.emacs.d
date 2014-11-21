;;C
(add-hook
 'c-mode-common-hook
 (lambda ()
   ;; BSDスタイルをベースにする
   (c-set-style "cc-mode")
   ;; スペースでインデントをする
   (setq indent-tabs-mode nil)
   ;; インデント幅を2にする
   (setq c-basic-offset 2)
   ;; 自動改行（auto-new-line）と
   ;; 連続する空白の一括削除（hungry-delete）を
   ;; 有効にする
   (c-toggle-auto-hungry-state 1)
   (add-to-list 'ac-sources 'ac-source-c-headers)
   (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
