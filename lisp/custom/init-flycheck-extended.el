;; -----------------------------------------------------------
;; -- Extended FlyCheck Configuration
;; --
;; -- This configuration extends Purcell's Flycheck setup.
;; -----------------------------------------------------------

;;; Code:
(require 'flycheck-flow)

(flycheck-add-next-checker 'javascript-eslint 'javascript-flow)

(flycheck-add-next-checker 'javascript-flow 'javascript-flow-coverage)

(with-eval-after-load 'flycheck
  (flycheck-popup-tip-mode))

(provide 'init-flycheck-extended)
;;; init-flycheck-extended ends here
