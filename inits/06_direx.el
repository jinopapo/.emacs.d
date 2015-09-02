;ディレクトリ表示
(require 'direx)
(setq direx:leaf-icon "  "
      direx:open-icon "▾"
      direx:closed-icon "▸"
      direx:root-item "/")
(global-set-key (kbd "C-x d") 'direx:jump-to-directory-other-window)
(global-set-key (kbd "C-x C-d") 'direx:find-directory-other-window )
(global-set-key (kbd "C-x C-j") 'direx-project:jump-to-project-root-other-window )
