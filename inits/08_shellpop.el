; shell-pop の設定
(require 'shell-pop)
(global-set-key [f8] 'shell-pop)
(custom-set-variables
 '(shell-pop-shell-type (quote ("ansi-term" "*shell-pop-ansi-term*" (lambda nil (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/bin/zsh")
 '(shell-pop-window-height 50)
 '(shell-pop-window-position "bottom"))
