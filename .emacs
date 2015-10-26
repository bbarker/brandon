(load "~/.emacs.d/window-number.el" t)   ; t = true, for 'missing-ok'
(window-number-mode)
 
(setq c-default-style "k&r"
      c-basic-offset 2)
 
;; Macaulay 2 start
(load "~/.emacs-Macaulay2" t)
;; Macaulay 2 end

;;; For older Emacs
(add-to-list 'load-path "~/.emacs.d/cl-lib")
(require 'cl-lib)

(add-to-list 'load-path "~/emacs-clojure/cider")
(add-to-list 'load-path "~/emacs-clojure/clojure-mode")
(add-to-list 'load-path "~/emacs-clojure/dash.el")
;;(require 'cider) ;; Why doesn't this load?
;
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq nrepl-hide-special-buffers t)
(setq cider-repl-history-size 5000) 

(setq column-number-mode t)
(global-auto-revert-mode 1)
(add-to-list 'load-path "~/julia")
(require 'julia-mode)

(load "auctex.el" t t t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;;; This snippet enables lua-mode
(load "~/.emacs.d/lua-mode.el" t)
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(load (concat (getenv "HOME")
              "/ATS-Postiats-contrib/contrib/libats-/bbarker/emacs/ats2-mode.el") t)
;; For ATS1:
;(load "~/.emacs.d/ats-mode.el" t)
;(load "~/.emacs.d/ats-flymake.el" t)

(load "~/.emacs.d/pastebin.el" t) 

(setq py-install-directory "~/.emacs.d/python-mode.el-6.1.0")
(add-to-list 'auto-mode-alist '("\\.\\(s\\|d\\|h\\)ats\\'" . ats-mode))
(provide 'ats-mode)

(add-to-list 'load-path py-install-directory)
(require 'python-mode)
;; Code completion:
(setq py-load-pymacs-p t)

;; 
(load "/usr/share/emacs/site-lisp/ipython.el" t)
(put 'downcase-region 'disabled nil)


(defcustom matlab-comment-line-s "% "
  "*String to start comment on line by itself."
  :group 'matlab
  :type 'string)

(defcustom matlab-comment-on-line-s "% "
  "*String to start comment on line with code."
  :group 'matlab
  :type 'string)

(defcustom matlab-comment-region-s "% $$$ "
  "*String inserted by \\[matlab-comment-region] at start of each line in \
region."
  :group 'matlab
  :type 'string)


;; (require 's)
;; (load "~/flycheck/flycheck.el")
;; (setq flycheck-check-syntax-automatically '(mode-enabled save idle-change))

(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))



;;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

(setq-default ispell-program-name "aspell")

(set-default 'cursor-type 'hollow)

