(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-hook 'ruby-mode-hook
          '(lambda ()
	     (define-key ruby-mode-map "M-C-p" 'previous-multiframe-window)
             (define-key ruby-mode-map "M-C-n" 'next-multiframe-window)))
;;ruby-electric
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)
;; ruby-block.el --- highlight matching block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)
