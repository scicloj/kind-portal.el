;;; kind-portal.el --- Emacs commands for Clojure Kindly visualizations in Portal  -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Scicloj

;; Author: daslu <daslu@daslu-ThinkPad-P14s-Gen-3>
;; Keywords: lisp
;; URL: https://github.com/scicloj/kind-portal.el
;; Version: 1.0

;; Package-Requires: ((emacs "26.1") (cider "1.0"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Emacs commands for Clojure Kindly visualizations in Portal

;;; Code:

(require 'cider)

(defun kind-portal-open-if-needed ()
  "Open the Portal view if you haven't yet."
  (interactive)
  (cider-interactive-eval "
    (require '[scicloj.kind-portal.v1.api])
    (scicloj.kind-portal.v1.api/open-if-needed)")
  t)

(defun kind-portal-send (code)
  "Eval & submit a given piece of Clojure CODE to Portal, adapted for Kindly."
  (cider-interactive-eval
   (concat "
     (require '[portal.api]
              '[scicloj.kind-portal.v1.api])
     (portal.api/clear)
     (scicloj.kind-portal.v1.api/kindly-submit-context {:form (quote " code ")})")))

(defun kind-portal-send-last-sexp ()
  "Eval & submit the last Clojure form before the cursor to Portal, adapted for Kindly."
  (interactive)
  (kind-portal-send (cider-last-sexp)))

(defun kind-portal-send-defun-at-point ()
  "Eval & submit the top-level Clojure form at the cursor to Portal, adapted for Kindly."
  (interactive)
  (kind-portal-send (thing-at-point 'defun)))

(provide 'kind-portal)
;;; kind-portal.el ends here
