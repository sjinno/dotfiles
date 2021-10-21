;;; package --- Summary
;;; Commentary:
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`.  Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;; Code:
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))




;; GENERAL =========
(desktop-save-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)
(display-line-numbers-mode 1)
(setq display-line-numbers 'relative)
(set-frame-font "Liberation Mono 10" nil t)
;; (add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))
;; (set-background-color "#F3F0DF")
;; END =============




;; LATEX =========
;; (latex-preview-pane-enable)
;; END ===========




;; RUST =========
;; Indentation
;; The Rust style guide recommends spaces rather than tabs for indentation; to follow the recommendation add this to your init.el, which forces indentation to always use spaces.
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(use-package rustic)

(setq lsp-rust-analyzer-server-command '("~/.local/bin/rust-analyzer"))

;; Rust code formatting settings
;; disable rustfmt... :) comment this out to turn it back on
;;(setq rust-format-buffer nil)
;;(setq rust-format-on-save t)


;; Clippy
(global-set-key (kbd "C-c C-x") 'rust-run)
;;(global-set-key (kbd "C-c C-c") 'rust-run-clippy)
;; END ==========




;; MULTIPLE CURSORS =========
(global-set-key (kbd "C-S-s C-S-s") 'mc/edit-lines)
(global-set-key (kbd "C-S-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-S-l C-S-l") 'mc/mark-all-like-this)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "C-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key (kbd "C-S-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-<up>") 'mc/mark-previous-like-this)
;; END ======================




;; OPACITY =========
(set-frame-parameter (selected-frame) 'alpha '(100 . 96))
(add-to-list 'default-frame-alist '(alpha . (100 . 96)))
;; END =============




;; PYTHON =========
;; (elpy-enable)

;; Use IPython for REPL

;; (setq python-shell-interpreter "jupyter"
;;       python-shell-interpreter-args "console --simple-prompt"
;;       python-shell-prompt-detect-failure-warning nil)
;; (add-to-list 'python-shell-completion-native-disabled-interpreters
;;              "jupyter")
;; END ============




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-safe-themes
   '("28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "f490984d405f1a97418a92f478218b8e4bcc188cf353e5dd5d5acd2f8efd0790" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "b5e75f219d41e6e3516560ac493d808b621a99847d6128ce8e6c74b1495ce875" default))
 '(fci-rule-color "#dedede")
 '(line-spacing 0.2)
 '(package-selected-packages
   '(poet-theme rustic flycheck-rust cargo lsp-mode multiple-cursors)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




(provide 'init)
;;; init.el ends here
