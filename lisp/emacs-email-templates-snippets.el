;;; emacs-email-templates-snippets.el --- Snippet support for email templates -*- lexical-binding: t; -*-

;; Author: Your Name <your.email@example.com>
;; Version: 0.1.0
;; Package-Requires: ((emacs "26.1") (yasnippet "0.14.0"))
;; Keywords: mail, templates, snippets, yasnippet, tempo
;; Homepage: https://github.com/danoricm/emacs-email-templates-snippets
;; License: GPL-3.0-or-later

;;; Commentary:

;; This package provides support for integrating snippets into email templates.
;; It works with snippet managers like `yasnippet` and `tempo`, allowing users
;; to insert and expand snippets within their email templates.

;;; Code:

(require 'yasnippet)
(require 'emacs-email-templates-snippets-yas)
(require 'emacs-email-templates-snippets-tempo)

(defvar emacs-email-templates-snippets-mode-hook nil
  "Hook for `emacs-email-templates-snippets-mode'.")

(define-minor-mode emacs-email-templates-snippets-mode
  "Minor mode to enable snippet support in email templates."
  :lighter " Email-Snippets"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c & C-s") 'emacs-email-snippet-insert)
            map)
  (if emacs-email-templates-snippets-mode
      (yas-minor-mode 1)
    (yas-minor-mode -1)))

(defun emacs-email-snippet-insert ()
  "Insert a snippet into the current email template."
  (interactive)
  (if (yas-expand)
      (message "Snippet expanded successfully.")
    (message "No snippet found.")))

(provide 'emacs-email-templates-snippets)
;;; emacs-email-templates-snippets.el ends here
