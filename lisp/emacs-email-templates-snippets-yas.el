;;; emacs-email-templates-snippets-yas.el --- Yasnippet integration for email templates -*- lexical-binding: t; -*-

;;; Commentary:
;; This file provides Yasnippet integration for the email templates.
;; Users can insert and expand Yasnippet snippets within their email templates.

;;; Code:

(require 'yasnippet)

(defvar emacs-email-templates-snippets-dir
  (expand-file-name "snippets/email-mode/" (file-name-directory load-file-name))
  "Directory where the email snippet templates are stored.")

(defun emacs-email-templates-snippets-setup ()
  "Set up Yasnippet for email templates."
  (yas-reload-all)
  (yas-activate-extra-mode 'email-mode)
  (add-to-list 'yas-snippet-dirs emacs-email-templates-snippets-dir))

(emacs-email-templates-snippets-setup)

(provide 'emacs-email-templates-snippets-yas)
;;; emacs-email-templates-snippets-yas.el ends here
