;;; sysmlv2-mode.el --- Emacs mode for SysML V.2 Textual representation

 ;; Copyright (C) 2022  Felix Brüning, M.Sc., University of Bremen

 ;; Author: Felix Brüning

 ;; This file is free software; you can redistribute it and/or modify
 ;; it under the terms of the GNU General Public License as published by
 ;; the Free Software Foundation; either version 2, or (at your option)
 ;; any later version.

 ;; This file is distributed in the hope that it will be useful,
 ;; but WITHOUT ANY WARRANTY; without even the implied warranty of
 ;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 ;; GNU General Public License for more details.

 ;; You should have received a copy of the GNU General Public License
 ;; along with GNU Emacs; see the file COPYING.  If not, write to
 ;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 ;; Boston, MA 02111-1307, USA.

 ;;; Commentary:
 ;; First version, 1.0

 ;;; Code:

;; ========================================================================
;; SysML V.2 Constants
;; ========================================================================
(defvar sysmlv2-constants
  '(""))

;; ========================================================================
;; SysML V.2 Keywords
;; ========================================================================
(defvar sysmlv2-keywords
  '("import"
    "part"
    "part def"
    "attribute"
    "attribute def"
    "package"
    "interface"
    "connect"
    "to"
    "bind"
    "requirement"
    "satisfy"
    "via"
    "ref"
    "port"
    "port def"
    "subsets"
    "redefines"
    "doc"
    "action"
    "action def"
    "item"
    "item def"
    "calc"
    "calc def"
    "assign"
    "if"
    "then"
    "else"
    "first"
    "perform"
    "do"
    "for"
    "state"
    "decide"
    "parallel"
    "send"
    "merge"
    "accept"
    "transition"
    "when"
    "at"
    "entry"
    "exit"
    "in"
    "out"
    "by"
    "enum"
    "enum def"
    "istype"
    "specializes"
    "inout"
    "end"))
  
;; I'd probably put in a default that you want, as opposed to nil
(defvar sysmlv2-tab-width 4 "Width of a tab for sysmlv2 mode")

;; ========================================================================
;; Chars and Strings locked for syntax
;; ========================================================================
(defvar sysmlv2-font-lock-defaults
  `((
      ("\"\\.\\*\\\\:>\\:>>?" . font-lock-string-face)
      ("[\\|]\\|>\\|~\\|:\\|,\\|;\\|{\\|}\\|=" . font-lock-keyword-face)
      ( ,(regexp-opt sysmlv2-keywords 'words) . font-lock-builtin-face)
      ( ,(regexp-opt sysmlv2-constants 'words) . font-lock-constant-face)
      )))

;; ========================================================================
;; SysML V.2 Mode definitions
;; ========================================================================
(define-derived-mode sysmlv2-mode fundamental-mode "SysML V.2"
  "sysmlv2 mode is a major mode for editing sysmlv2 files"

  (setq font-lock-defaults sysmlv2-font-lock-defaults)

  (when sysmlv2-tab-width
    (setq tab-width sysmlv2-tab-width))

  (modify-syntax-entry ?/ ". 124b" sysmlv2-mode-syntax-table)
  (modify-syntax-entry ?* ". 23" sysmlv2-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" sysmlv2-mode-syntax-table)
  (modify-syntax-entry ?\f "> b" sysmlv2-mode-syntax-table)
  
)

(provide 'sysmlv2-mode)
