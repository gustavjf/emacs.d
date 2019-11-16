;;; package --- Summary
;;; lsp-mode configuration

;;; Commentary:
;;; For more information:
;;; https://github.com/emacs-lsp/lsp-mode
;;; https://langserver.org/

;;; Code:
(require 'lsp-mode)
(require 'lsp-ui)
(require 'company-lsp)

(push 'company-lsp company-backends)

;;; Javascript/TypeScript
(add-hook 'js2-mode-hook #'lsp)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'js2-mode-hook 'flycheck-mode)


(provide 'init-lsp)
;;; init-lsp.el ends here
