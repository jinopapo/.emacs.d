;ディレクトリ表示
(require 'direx)
(setq direx:leaf-icon "  "
      direx:open-icon "▾"
      direx:closed-icon "▸"
      direx:root-item "/")
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
(global-set-key (kbd "C-x j") 'direx:jump-to-directory )
