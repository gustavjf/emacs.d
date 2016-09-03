;; -------------------
;; -- Golang Config --
;; -------------------

;;; Code:

;;; Indentation set to 4 spaces
(add-hook 'go-mode-hook
          (lambda ()
            (setq-default)
            (setq tab-width 4)
            (setq standard-indent 4)
            (setq indent-tabs-mode nil)))

;;; GOPATH
(setenv "GOPATH" "/Users/gustavojimenez/Development/gocode")

;;; Call goimports (gofmt + import check) before saving
;;; Customize compile command to run go build
;;; Godef jump key binding
(setq exec-path (cons "/usr/local/bin/go" exec-path))
(add-to-list 'exec-path "/Users/gustavojimenez/Development/gocode/bin")
(defun my-go-mode-hook ()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;;; Auto Complete
(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

;;; gometalinter
;; skips 'vendor' directories and sets GO15VENDOREXPERIMENT=1
;;(setq flycheck-gometalinter-vendor t)
;; disable linters
;;(setq flycheck-gometalinter-disable-linters '("gotype" "gocyclo"))
;; Only enable selected linters
;;(setq flycheck-gometalinter-disable-all t)
;;(setq flycheck-gometalinter-enable-linters '("golint"))
;; Set different deadline (default: 5s)
;;(setq flycheck-gometalinter-deadline "10s")

(provide 'init-golang)
;;; init-golang-conf.el ends here
