;; -------------------------------------------------------------------------------------------
;; -- Tern.js Autocomplete Config                                                           --
;; --                                                                                       --
;; -- See here: https://truongtx.me/2014/04/20/emacs-javascript-completion-and-refactoring/ --
;; -------------------------------------------------------------------------------------------

;;; Code:

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

;; Relaunch Tern server
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

(provide 'tern-conf)
;;;
