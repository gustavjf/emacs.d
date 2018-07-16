;; ---------------------------------------------------------------
;; -- Jenkins configuration
;; --
;; -- This configuration only sets groovy-mode for `'Jenkinsfile`s
;; ---------------------------------------------------------------

;;; Code:

;; Use groovy-mode for Jenkinsfile
(add-to-list 'auto-mode-alist '("\\.Jenkinsfile$" . groovy-mode))

(provide 'init-jenkins)
;;;
