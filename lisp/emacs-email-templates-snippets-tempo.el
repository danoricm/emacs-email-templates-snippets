;;; emacs-email-templates-snippets-tempo.el --- Tempo integration for email templates -*- lexical-binding: t; -*-

;;; Commentary:
;; This file provides Tempo snippet integration for email templates.
;; Users can define and insert Tempo snippets within their email templates.

;;; Code:

(require 'tempo)

(defvar emacs-email-templates-tempo-snippets nil
  "Tempo snippets for email templates.")

(defun emacs-email-templates-tempo-define (name elements)
  "Define a Tempo snippet NAME with ELEMENTS."
  (add-to-list 'emacs-email-templates-tempo-snippets
               (tempo-define-template name elements)))

(defun emacs-email-tempo-insert-snippet (name)
  "Insert a Tempo snippet by NAME into the current buffer."
  (interactive "sSnippet Name: ")
  (let ((snippet (assoc name emacs-email-templates-tempo-snippets)))
    (if snippet
        (tempo-template-insert (cdr snippet))
      (message "Snippet '%s' not found." name))))

(provide 'emacs-email-templates-snippets-tempo)
;;; emacs-email-templates-snippets-tempo.el ends here
