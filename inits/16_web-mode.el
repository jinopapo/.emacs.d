(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-hook 'web-mode-hook
	  '(lambda()
	     (setq indent-tabs-mode nil)
	     (setq web-mode-markup-indent-offset 2)))
