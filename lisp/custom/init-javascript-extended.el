;; -----------------------------------------------------------
;; -- Extended JavaScript Configuration
;; --
;; -- This configuration extends Purcell's JavaScript setup.
;; -----------------------------------------------------------

;;; Code:

;; Use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; Force 'content-type' as 'jsx' for .js and .jsx files
;; See here: http://cha1tanya.com/2015/06/20/configuring-web-mode-with-jsx.html
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))

(require 'flycheck)

;; Disable jshint since eslint is preferred
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; Use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; Disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonist)))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Adjust indents for web-mode
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

;; flowtype
;; https://flowtype.org
(load-file "~/.emacs.d/lisp/custom/flow.el")

(provide 'init-javascript-extended)
;;;
