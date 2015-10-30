;; ;; C++
;; ;; http://d.hatena.ne.jp/pyopyopyo/20070715/
(defun flymake-cc-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "g++" (list "-std=c++11" "-Wall" "-Wextra" "-fsyntax-only" local-file))))

(push '("\\.cpp$" flymake-cc-init) flymake-allowed-file-name-masks)

(add-hook 'c++-mode-hook
  '(lambda ()
      (flymake-mode t)
      (flex-autopair-mode t)
      (auto-new-line nil)))
