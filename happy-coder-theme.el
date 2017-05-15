;;; happy-coder-theme.el --- Theme

;; MIT License
;;
;; Copyright (c) 2017 Alexandru Dreptu
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;; Author: Alexandru Dreptu <alexdreptu@gmail.com>
;; Version:
;; URL: https://github.com/alexdreptu/emacs-happy-coder-theme
;; Package-Requires: ((emacs "24"))

;;; Commentary:

;;; Code:

(deftheme happy-coder)
(let ((class '((class color) (min-colors 89)))
      ;; code
      (fg "white")
      (bg "#272822")
      (comment1 "#A6A6A6")
      (comment2 "#A69D85")
      ;; (string "#D98D8D")
      (string "#C3D98D") ; undecided
      (number "#ffba5a")
      (character "#ba73e6")
      (constant "#99b3ff")
      (type "#a9a9ff")
      (include "#98b3a1")
      (condition "#98b9d9")
      (function "#bbbbe6")
      (include "#98b3a1")
      (builtin "#BDA6FF")
      (operator "#d9d96d")
      (paren "#c0f0ff")
      (paren-match "#666642")

      ;; editor
      (cursor "#B3B362")
      (cursorlinenr "lightgoldenrod")
      (selection "darkolivegreen")
      (tooltip-fg "lightgray")
      (tooltip-bg "#2f3029")
      (annotation "lightgoldenrod")
      (annotation2 "slategray2")
      (match "sienna")
      (warning "lightgoldenrod")
      (modeline-bg "#3E4038"))
  (custom-theme-set-faces
   'happy-coder
   ;;; Code
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(font-lock-comment-face ((,class (:foreground ,comment1 :slant italic))))
   `(font-lock-doc-face ((,class (:foreground ,comment2 :slant italic))))
   `(font-lock-string-face ((,class (:foreground ,string :slant italic))))
   `(font-lock-negation-char-face ((,class (:foreground ,character :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-function-name-face ((,class (:foreground ,function))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-keyword-face ((,class (:inherit font-lock-builtin-face))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,include))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))

   ;; show-paren
   `(show-paren-match ((,class (:foreground ,fg :background ,paren-match))))
   `(show-paren-mismatch ((,class (:foregronud ,fg :background ,"red")))) ; temporary

   ;; highlight-numbers
   `(highlight-numbers-number ((,class (:foreground ,number))))

   ;; highlight-quoted
   `(highlight-quoted-quote ((,class (:foreground ,operator))))

   ;; highlight-defined
   `(highlight-defined-function-name-face ((,class (:inherit font-lock-function-name-face))))
   `(highlight-defined-variable-name-face ((,class (:foreground ,fg)))) ; temporary

   ;;; Editor
   `(cursor ((,class (:background ,cursor))))
   `(region ((,class (:foreground ,fg :background ,selection))))
   `(match ((,class (:foreground ,fg :background ,match))))
   `(isearch ((,class (:inherit match))))
   `(isearch-fail ((,class (:foreground ,"green")))) ;; TODO: be removed
   `(fringe ((,class (:inherit default))))
   `(vertical-border ((,class (:foreground ,"gray40"))))

   `(highlight ((,class (:foreground ,fg :background ,selection))))
   `(lazy-highlight ((,class (:foregorund nil))))
   `(minibuffer-prompt ((,class (:foreground ,annotation))))

   ;; mode-line
   `(mode-line ((,class (:foreground ,fg :background ,modeline-bg))))
   `(mode-line-buffer-id ((,class (:weight normal))))

   ;; telephone-line
   `(telephone-line-accent-active ((,class (:foreground ,fg :background ,"#5E4D66"))))
   `(telephone-line-evil-insert ((,class (:foreground ,fg :background ,match))))
   `(telephone-line-evil-visual ((,class (:foreground ,fg :background ,match))))
   `(telephone-line-evil-replace ((,class (:foreground ,fg :background ,match))))
   `(telephone-line-evil-normal ((,class (:foreground ,fg :background ,selection))))

   ;; linum / nlinum
   `(linum ((,class (:foreground ,comment1 :background ,bg))))
   `(nlinum-relative-current-face ((,class (:foreground ,cursorlinenr :background ,bg))))

   ;; which-key
   `(which-key-key-face ((,class (:foreground ,annotation))))
   
   ;; ace-window
   ;; `(aw-leading-char-face ((,class (:foreground ,annotation :slant normal))))
   `(aw-leading-char-face ((,class (:foreground ,fg :background ,match :slant normal))))

   ;; neotree
   `(neo-root-dir-face ((,class (:foreground ,"burlywood"))))
   `(neo-dir-link-face ((,class (:foreground ,"lightskyblue"))))

   ;; ivy
   `(ivy-cursor ((,class (:foreground ,fg :background ,match))))
   `(ivy-current-match ((,class (:inherit region))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground nil))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,fg :background ,match))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,fg :background ,match))))
   `(ivy-minibuffer-match-face-4 ((,class (:inherit ivy-minibuffer-match-face-1))))
   
   ;; flycheck
   `(flycheck-error ((,class (:foreground ,fg :background ,match))))

   ;; company
   `(company-tooltip ((,class (:foreground ,tooltip-fg :background ,tooltip-bg))))
   `(company-tooltip-selection ((,class (:foreground ,fg :background ,selection))))
   `(company-tooltip-common ((,class (:foreground ,fg :background ,match))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-common))))
   `(company-scrollbar-fg ((,class (:background ,"lightgoldenrod4"))))
   `(company-scrollbar-bg ((,class (:background ,"#3E4037"))))
   `(company-tooltip-annotation ((,class (:foreground ,annotation2))))
   `(company-preview-common ((,class (:foreground ,fg :background ,match))))
   `(company-template-field ((,class (:inherit match)))) ; temporary

   ;; avy
   `(avy-background-face ((,class (:foreground ,fg :background ,match))))

   `(yas-field-highlight-face ((,class (:background ,bg))))

   ;; slime
   `(slime-repl-input-face ((,class (:foreground ,fg))))
   `(slime-repl-output-face ((,class (:inherit slime-repl-input-face))))

   ;; geiser
   `(geiser-font-lock-repl-input ((,class (:weight normal))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'happy-coder)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; happy-coder-theme.el ends here
