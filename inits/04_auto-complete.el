;;; 部分一致の補完機能を使う
;;; 補完可能なものを随時表示
;;; 少しうるさい
(icomplete-mode 1)
;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
;;補完
(require 'auto-complete-config)
(ac-config-default)
(require 'ac-c-headers)
(setq ac-l-dict-directory "~/.emacs.d/ac-l-dict/")
(add-to-list 'ac-modes 'latex-mode)
(add-to-list 'ac-modes 'web-mode)
(add-hook 'latex-mode-hook 'ac-l-setup)
