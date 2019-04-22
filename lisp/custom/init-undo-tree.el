;; -------------------------------------------------------------------------------------
;; -- undo-tree
;; --
;; -- This brings back the undo-tree visualization
;; --
;; -- It was removed here:
;; -- https://github.com/purcell/emacs.d/commit/cdb22f6213858a30d8e0622a31ece41264e19f29
;; -------------------------------------------------------------------------------------

;;; Code:

(require-package 'undo-tree)
(add-hook 'after-init-hook 'global-undo-tree-mode)
(after-load 'undo-tree
  (diminish 'undo-tree-mode))

(provide 'init-undo-tree)
;;; init-undo-tree.el ends here
