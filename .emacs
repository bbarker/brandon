;; Macaulay 2 start
(load "~/.emacs-Macaulay2" t)  ; t = true, for 'missing-ok'
;; Macaulay 2 end


(setq column-number-mode t)

(add-to-list 'load-path "~/julia")
(require 'julia-mode)

(load "auctex.el" nil t t)
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


(load (concat (getenv "PATSHOME") "/utils/emacs/ats2-mode.el") t)
(load "~/.emacs.d/ats-mode.el" t)
(load "~/.emacs.d/pastebin.el" t) 
;(load "~/.emacs.d/ats-flymake.el" t)

(setq py-install-directory "~/.emacs.d/python-mode.el-6.1.0")
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


(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 's)
(load "~/flycheck/flycheck.el")
(setq flycheck-check-syntax-automatically '(mode-enabled save idle-change))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))



;;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

