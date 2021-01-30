;;; package --- Summary
;;; Commentary:
;;; Code:
(desktop-save-mode 0)


;;
;; Latex settings
;;
;; (latex-preview-pane-enable)


;;
;; Rust settings
;;
;; Indentation
;; The Rust style guide recommends spaces rather than tabs for indentation; to follow the recommendation add this to your init.el, which forces indentation to always use spaces.
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
;; Rust code formatting settings
;; disable rustfmt... :) comment this out to turn it back on
;;(setq rust-format-buffer nil)
;; (setq rust-format-on-save t)
;; Clippy


;;
;; Multiple cursors settings
;;
(global-set-key (kbd "C-S-s C-S-s") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)


;;
;; Opacity settings
;;
(set-frame-parameter (selected-frame) 'alpha '(100 . 96))
(add-to-list 'default-frame-alist '(alpha . (100 . 96)))


;;
;; Font settings
;;
(set-frame-font "Liberation Mono 10" nil t)


;;
;; Python settings
;;
;; (elpy-enable)
;; Use IPython for REPL
;; (setq python-shell-interpreter "jupyter"
;;       python-shell-interpreter-args "console --simple-prompt"
;;       python-shell-prompt-detect-failure-warning nil)
;; (add-to-list 'python-shell-completion-native-disabled-interpreters
;;              "jupyter")


(provide 'init-local)
;;; init-local.el ends here
