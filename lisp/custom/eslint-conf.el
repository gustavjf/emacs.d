;; -----------------------------------------------------------------------------------
;; -- ESLINT                                                                        --
;; --                                                                               --
;; -- Enables realtime linting of JS and JSX files in Emacs using eslint and        --
;; -- Babel.                                                                        --
;; --                                                                               --
;; -- See here: http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html --
;; -----------------------------------------------------------------------------------

;;; Code:

;; Use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; Force 'content-type' as 'jsx' for .js and .jsx files
;; See here: http://cha1tanya.com/2015/06/20/configuring-web-mode-with-jsx.html
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))

(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

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

;; Adjust indents for web-mode
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 4))
(add-hook 'web-mode-hook 'my-web-mode-hook)

(provide 'eslint-conf)
;;;
