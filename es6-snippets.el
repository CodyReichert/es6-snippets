;;; es6-snippets.el --- Yasnippets for ECMAScript 6
;;
;; Copyright (C) 2015 Cody Reichert
;;
;; Author: Cody Reichert <codyreichert@gmail.com>
;; URL: http://github.com/CodyReichert/es6-snippets
;; Keywords: convenience snippets javascript es6
;; Version: 0.0.1
;; Package-Requires: ((yasnippet "0.7.0"))
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; es6-snippets provides Yasnippets for ECMAScript 6 features and syntax.
;;
;;; Code:

(defvar es6-snippets-root (file-name-directory (or load-file-name
                                                   (buffer-file-name))))

;;;###autoload
(defun es6-snippets-initialize ()
  "Load es6-snippets."
  (let ((snippets-dir (expand-file-name "snippets" es6-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippets-dir t))
    (yas-load-directory snippets-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(es6-snippets-initialize))

(require 'yasnippet)

(provide 'es6-snippets)
;;; es6-snippets.el ends here
