
; =======================================================
; adjust load path
; =======================================================
(setq load-path (cons "c:/users/sshepler/data/lib/lisp" load-path))

; =======================================================
; recompile local lisp dir
; =======================================================

(require 'bytecomp)
(byte-recompile-directory "c:/users/sshepler/data/lib/lisp")

; =======================================================
; turn stuff off
; =======================================================

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(setq bell-volume 0)
(setq visible-bell t)
(set-cursor-color "red")
;(set-foreground-color "green")
(set-foreground-color "yellow")
(set-background-color "black")
(setq mac-command-modifier 'meta)
(setq x-select-enable-clipboard t)
(setq make-backup-files nil) 

(setq exec-path (append exec-path '("c:/cygwin/bin")))

; =======================================================
; turn stuff on
; =======================================================

(transient-mark-mode 1)
(global-font-lock-mode t)
(display-time-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(setq x-stretch-cursor t
      show-trailing-whitespace t)

(mouse-wheel-mode t)

; =======================================================
; Make all yes/no prompts into y/n prompts
; =======================================================

;(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key "\M-]" 'goto-line)

;(require 'xcscope)
;(global-set-key  "\M-[" 'cscope-find-this-symbol)
;(setq cscope-do-not-update-database t)
(require 'ms-ccmode-style)

; =======================================================
; convert a buffer from dos ^M end of lines to unix 
; end of lines
; =======================================================
(defun dos2unix ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; setup powershell mode
(autoload 'powershell-mode "c:/users/sshepler/data/lib/lisp/powershell-mode.el" "Powershell Lisp" t)
(add-to-list 'auto-mode-alist '("\\.ps1\\'" . powershell-mode))

; =======================================================
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(frame-background-mode (quote dark))
 '(default-frame-background-mode (quote dark))
 '(initial-frame-alist (quote ((width . 81) (height . 50))))
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; autoload powershell interactive shell
(autoload 'powershell "powershell" "Start a interactive shell of PowerShell." t)

(shell)
(powershell)
;;"c:/Program Files (x86)/Microsoft Visual Studio 10.0/VC/vcvarsall.bat"

