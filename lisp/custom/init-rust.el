;; ----------------------
;; -- Rust Lang Config --
;; ----------------------

;;; Code:

;; cargo.el
;; A minor mode that allows us to run Cargo commands
;; https://github.com/kwrooijen/cargo.el
(add-hook 'rust-mode-hook 'cargo-minor-mode)

;; emacs racer
;; code completion for Rust
;; https://github.com/phildawes/racer
;; https://github.com/racer-rust/emacs-racer
(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-path
      (getenv "RUST_SRC_PATH"))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

;; flycheck-rust
;; Note: You must run cargo build initially to install all dependencies.
;; If you add new dependencies to Cargo.toml you need to run cargo build
;; again. Otherwise you will see spurious errors about missing crates.
;; https://github.com/flycheck/flycheck-rust
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(provide 'init-rust)
;;; init-rust.el ends here
