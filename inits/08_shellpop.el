; shell-pop の設定
(require 'shell-pop)
(global-set-key [f8] 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/bin/zsh")
(shell-pop-set-window-height 60)
