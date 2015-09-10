(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
	  '(lambda()
	     (setq indent-tabs-mode nil)
	     (setq web-mode-markup-indent-offset 2)))
