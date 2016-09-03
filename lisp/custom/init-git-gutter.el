;; -----------------------------------------------------
;; -- Git Gutter Config
;; --
;; -- Repo: https://github.com/syohex/emacs-git-gutter
;; -----------------------------------------------------

;;; Code:

(require 'git-gutter)

;; If you enable global minor mode
(global-git-gutter-mode +1)

;; If you would like to use git-gutter.el and linum-mode
(git-gutter:linum-setup)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)

;; Stage current hunk
(global-set-key (kbd "C-x v s") 'git-gutter:stage-hunk)

;; Revert current hunk
(global-set-key (kbd "C-x v r") 'git-gutter:revert-hunk)

;; Show a separator column
(custom-set-variables
 '(git-gutter:separator-sign "|"))
(set-face-foreground 'git-gutter:separator "yellow")

(provide 'init-git-gutter)
;;;
