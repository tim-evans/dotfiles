;; Common Lisp
(require 'cl)

(defvar emacs-root "/Users/tce/")

(labels ((add-path (p)
         (add-to-list 'load-path
                      (concat emacs-root p))))
  (add-path ".emacs.d/") ;; .emacs.d files
)

;; Show columns
(setq-default column-number-mode t)

;; Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Backward kill word
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; M-x alias
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Marmalade
(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; javascript-mode
(autoload 'js2-mode "js2.elc" "Load JS2 mode." t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; coffee-mode
(add-to-list 'load-path (concat emacs-root ".emacs.d/coffee-mode"))
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; haml-mode
(add-to-list 'load-path (concat emacs-root ".emacs.d/haml-mode"))
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml" . haml-mode))

;; sass-mode
(add-to-list 'load-path (concat emacs-root ".emacs.d/sass-mode"))
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass" . sass-mode))

;; scss-mode
(autoload 'scss-mode "scss-mode.el" nil t)
(require 'scss-mode)

;; handlebars-mode
(require 'handlebars-mode)

;; ido-mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; ruby-mode
(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("[Rr]akefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("[Gg]emfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("[Aa]ssetfile" . ruby-mode))

;; php-mode
(autoload 'php-mode "php-mode.el" nil t)
(add-to-list 'auto-mode-alist '("\\.\\(php\\|inc\\)$" . php-mode))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(js2-basic-offset 2)
 '(scss-compile-at-save nil)
 '(large-file-warning-threshold nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
