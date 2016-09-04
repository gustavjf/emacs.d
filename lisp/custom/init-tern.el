;; ------------------------------------------------------------
;; -- Tern.js Autocomplete Configuration with `company-tern` --
;; ------------------------------------------------------------

;;; Code:

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'web-mode-hook (lambda () (tern-mode t)))

(require 'company-tern)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-tern))

;; Relaunch Tern server
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

(provide 'init-tern)
;;; init-tern.el ends here
