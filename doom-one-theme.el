;; DOOM One Dark (inspired by Atom One Dark)

(require 'doom)

(deftheme doom-one
  "A dark theme inspired by Atom One Dark")

(doom-init)

(let ((c '((class color) (min-colors 89)))
      (bold   doom-enable-bold)
      (italic doom-enable-italic)

      (black          "#141a22")
      (white          "#EEEEEE")
      (grey           "#525E6C")
      (grey-d         "#3D3D48")
      (grey-dd        "#20272e")
      (yellow         "#ECBE7B")
      (yellow-d       "#CDB464")
      (orange         "#E69055")
      (red            "#ff665c")
      (magenta        "#DC79DC")
      (violet         "#9C91E4")
      (violet-d       "#7C71C4")
      (cyan           "#46D9FF")
      (cyan-d         "#8FA1B3")
      (blue           "#00B3EF")
      (blue-l         "#40D3FF")
      (blue-d         "#00437F")
      (green          "#7bc275")
      (green-d        "#86B20E"))

  (let* ((bg             "#262c34")
         (bg-d           "#1f252b")
         (fg             "#C5CACF")

         (highlight      blue)
         (vertical-bar   black)
         (current-line   "#21272d")
         (selection      blue-d)
         (builtin        magenta)
         (comments       grey)
         (doc-comments   "#7F7F8A")
         (constants      violet)
         (functions      cyan)
         (keywords       blue)
         (methods        cyan)
         (operators      magenta)
         (type           yellow)
         (strings        green)
         (variables      (doom-lighten cyan 0.4))
         ;; main search regions
         (search-bg      blue)
         (search-fg      black)
         ;; other search regions
         (search-rest-bg grey-d)
         (search-rest-fg blue)
         ;; line number column
         (linum-bg       bg-d)
         (linum-fg       (doom-darken cyan-d 0.55))
         (linum-hl-fg    blue)
         (linum-hl-bg    bg-d)
         ;; mode line
         (modeline-fg    white)
         (modeline-fg-l  blue)
         (modeline-bg    bg-d)
         (modeline-fg-inactive grey)
         (modeline-bg-inactive bg-d)
         ;; vcs
         (vc-modified    yellow-d)
         (vc-added       green)
         (vc-deleted     red))

    (custom-theme-set-faces
     'doom-one
     ;; Doom faces
     `(doom-default           ((,c (:inherit default :background ,bg))))
     `(doom-minibuffer-active ((,c (:background ,bg))))
     `(doom-hl-line           ((,c (:background ,current-line))))
     `(doom-linum             ((,c (:inherit linum :background ,bg))))
     `(doom-nlinum-highlight  ((,c (:foreground ,linum-hl-fg :bold nil))))
     `(doom-flycheck-error    ((,c (:underline nil :foreground ,black :background ,red))))
     `(doom-flycheck-warning  ((,c (:underline nil :foreground ,black :background ,yellow))))
     `(doom-flycheck-info     ((,c (:underline nil :foreground ,black :background ,green))))
     ;; Base
     `(bold                   ((,c (:weight ,(if bold 'bold 'normal)))))
     `(italic                 ((,c (:slant  ,(if italic 'italic 'normal)))))
     `(bold-italic            ((,c (:weight ,(if bold 'bold 'normal) :slant ,(if italic 'italic 'normal) :foreground ,white))))
     ;; Global
     `(default                ((,c (:background ,bg-d :foreground ,fg))))
     `(fringe                 ((,c (:inherit doom-default))))
     `(region                 ((,c (:background ,blue-d :bold ,bold))))
     `(highlight              ((,c (:background ,blue :foreground ,black))))
     `(hl-line                ((,c (:background ,(if doom-enable-bright-buffers bg current-line)))))
     `(cursor                 ((,c (:background ,white))))
     `(shadow                 ((,c (:foreground ,violet))))
     `(minibuffer-prompt      ((,c (:foreground ,blue))))
     `(tooltip                ((,c (:background ,black :foreground ,fg))))
     `(error                  ((,c (:foreground ,red))))
     `(warning                ((,c (:foreground ,yellow))))
     `(success                ((,c (:foreground ,green))))
     ;;`(secondary-selection  ((,c (:background ,orange))))
     `(lazy-highlight         ((,c (:background ,blue-d))))
     `(match                       ((,c (:foreground ,green :background ,black :bold ,bold))))
     `(trailing-whitespace         ((,c (:background ,doc-comments))))
     `(vertical-border             ((,c (:foreground ,vertical-bar :background ,vertical-bar))))
     `(show-paren-match            ((,c (:foreground ,blue :inverse-video t))))
     `(linum                       ((,c (:background ,bg-d :foreground ,linum-fg :bold nil))))
     `(font-lock-builtin-face           ((,c (:foreground ,builtin))))
     `(font-lock-comment-face           ((,c (:foreground ,comments))))
     `(font-lock-comment-delimiter-face ((,c (:foreground ,comments))))
     `(font-lock-doc-face               ((,c (:foreground ,doc-comments))))
     `(font-lock-doc-string-face        ((,c (:foreground ,doc-comments))))
     `(font-lock-constant-face          ((,c (:foreground ,constants))))
     `(font-lock-function-name-face     ((,c (:foreground ,functions))))
     `(font-lock-keyword-face           ((,c (:foreground ,keywords))))
     `(font-lock-string-face            ((,c (:foreground ,strings))))
     `(font-lock-type-face              ((,c (:foreground ,type))))
     `(font-lock-variable-name-face     ((,c (:foreground ,variables))))
     `(font-lock-warning-face           ((,c (:inherit warning))))
     `(font-lock-negation-char-face          ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-preprocessor-face           ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-preprocessor-char-face      ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-regexp-grouping-backslash   ((,c (:foreground ,operators :bold ,bold))))
     `(font-lock-regexp-grouping-construct   ((,c (:foreground ,operators :bold ,bold))))
     ;; Modeline
     `(mode-line                   ((,c (:foreground ,modeline-fg :background ,modeline-bg))))
     `(mode-line-inactive          ((,c (:foreground ,modeline-fg-inactive :background ,modeline-bg-inactive))))
     `(spaceline-highlight-face    ((,c (:foreground ,black :background ,yellow))))
     `(powerline-active1           ((,c (:foreground ,modeline-fg-l :background ,modeline-bg))))
     `(powerline-active2           ((,c (:foreground ,modeline-fg-l :background ,modeline-bg))))
     `(powerline-inactive1         ((,c (:foreground ,modeline-fg-inactive :background ,modeline-bg-inactive))))
     `(powerline-inactive2         ((,c (:foreground ,modeline-fg-inactive :background ,modeline-bg-inactive))))
     ;; Custom modeline faces
     `(mode-line-is-modified       ((,c (:foreground ,red :bold ,bold))))
     `(mode-line-buffer-file       ((,c (:foreground ,modeline-fg :bold ,bold))))
     `(mode-line-buffer-path       ((,c (:foreground ,modeline-fg-l))))
     `(mode-line-count-face        ((,c (:foreground ,black :background ,modeline-fg-l))))
     `(mode-line-vcs-info          ((,c (:inherit success))))
     `(mode-line-vcs-warning       ((,c (:inherit error))))
     ;; Search
     `(isearch                     ((,c (:foreground ,search-bg :inverse-video t))))
     `(isearch-lazy-highlight-face ((,c (:background ,search-rest-bg))))
     `(yas-field-highlight-face    ((,c (:inherit match))))

     ;;
     ;; Plugins
     ;;

     ;; Avy
     `(avy-lead-face-0    ((,c (:background ,search-bg :foreground ,search-fg))))
     `(avy-lead-face-1    ((,c (:background ,search-bg :foreground ,search-fg))))
     `(avy-lead-face-2    ((,c (:background ,search-bg :foreground ,search-fg))))
     `(avy-lead-face      ((,c (:background ,search-bg :foreground ,search-fg))))
     ;; company-mode
     `(company-tooltip             ((,c (:inherit tooltip))))
     `(company-tooltip-common      ((,c (:foreground ,blue))))
     `(company-tooltip-search      ((,c (:foreground ,search-fg :background ,highlight))))
     `(company-tooltip-selection   ((,c (:background ,selection))))
     `(company-tooltip-mouse       ((,c (:background ,magenta :foreground ,bg))))
     `(company-tooltip-annotation  ((,c (:foreground ,violet))))
     `(company-scrollbar-bg        ((,c (:background ,black))))
     `(company-scrollbar-fg        ((,c (:background ,blue))))
     `(company-preview             ((,c (:foreground ,blue))))
     `(company-preview-common      ((,c (:foreground ,magenta :background ,grey-d))))
     `(company-preview-search      ((,c (:inherit company-tooltip-search))))
     ;; diff-hl
     `(diff-hl-change              ((,c (:foreground ,vc-modified))))
     `(diff-hl-delete              ((,c (:foreground ,vc-deleted))))
     `(diff-hl-insert              ((,c (:foreground ,vc-added))))
     ;; evil-mode
     `(evil-ex-substitute-matches                   ((,c (:background ,black :foreground ,red :strike-through t :bold ,bold))))
     `(evil-ex-substitute-replacement               ((,c (:background ,black :foreground ,green :bold ,bold))))
     `(evil-search-highlight-persist-highlight-face ((,c (:inherit isearch-lazy-highlight-face))))
     ;; evil-snipe
     `(evil-snipe-first-match-face ((,c (:foreground ,search-bg :background ,blue-d))))
     `(evil-snipe-matches-face     ((,c (:foreground ,search-bg :underline t :bold ,bold))))
     ;; flycheck
     `(flycheck-error     ((,c (:underline (:style wave :color ,red)    :background ,bg-d))))
     `(flycheck-warning   ((,c (:underline (:style wave :color ,yellow) :background ,bg-d))))
     `(flycheck-info      ((,c (:underline (:style wave :color ,green)  :background ,bg-d))))
     `(flyspell-incorrect ((,c (:underline (:style wave :color ,red) :inherit unspecified))))
     ;; git-gutter
     `(git-gutter:modified         ((,c (:foreground ,vc-modified))))
     `(git-gutter:added            ((,c (:foreground ,vc-added))))
     `(git-gutter:deleted          ((,c (:foreground ,vc-deleted))))
     `(git-gutter+-modified        ((,c (:foreground ,vc-modified))))
     `(git-gutter+-added           ((,c (:foreground ,vc-added))))
     `(git-gutter+-deleted         ((,c (:foreground ,vc-deleted))))
     ;; Helm
     `(helm-selection              ((,c (:background ,selection))))
     `(helm-match                  ((,c (:foreground ,blue :underline t))))
     `(helm-source-header          ((,c (:background ,current-line :foreground ,grey))))
     `(helm-swoop-target-line-face ((,c (:foreground ,highlight :inverse-video t))))
     `(helm-ff-file                ((,c (:foreground ,fg))))
     `(helm-ff-prefix              ((,c (:foreground ,magenta))))
     `(helm-ff-dotted-directory    ((,c (:foreground ,grey-d))))
     `(helm-ff-directory           ((,c (:foreground ,orange))))
     `(helm-ff-executable          ((,c (:foreground ,white :slant italic))))
     ;; indent-guide, highlight-{quoted,numbers,indentation}-mode
     `(indent-guide-face                         ((,c (:foreground "#2F2F38"))))
     `(highlight-indentation-face                ((,c (:background "#222830"))))
     `(highlight-indentation-current-column-face ((,c (:background "#222830"))))
     `(highlight-indentation-guides-odd-face     ((,c (:background ,bg))))
     `(highlight-indentation-guides-even-face    ((,c (:background "#222830"))))
     `(highlight-quoted-symbol                   ((,c (:foreground ,type))))
     `(highlight-quoted-quote                    ((,c (:foreground ,operators))))
     `(highlight-numbers-number                  ((,c (:foreground ,constants))))
     ;; hide-show
     `(hs-face            ((,c (:foreground ,comments :background ,black))))
     `(hs-fringe-face     ((,c (:foreground ,blue))))
     ;; iedit
     `(iedit-occurrence           ((,c (:foreground ,magenta :bold ,bold :inverse-video t))))
     `(iedit-read-only-occurrence ((,c (:inherit region))))
     ;; neotree
     `(neo-root-dir-face           ((,c (:foreground ,green))))
     `(neo-file-link-face          ((,c (:foreground ,fg))))
     `(neo-dir-link-face           ((,c (:foreground ,blue))))
     `(neo-expand-btn-face         ((,c (:foreground ,blue))))
     ;; pos-tip
     `(popup                       ((,c (:inherit tooltip))))
     `(popup-tip-face              ((,c (:inherit tooltip))))
     ;; Volatile highlights
     `(vhl/default-face            ((,c (:background ,grey-d))))
     ;; Rainbow delimiters
     `(rainbow-delimiters-depth-1-face   ((,c (:foreground ,blue))))
     `(rainbow-delimiters-depth-2-face   ((,c (:foreground ,magenta))))
     `(rainbow-delimiters-depth-3-face   ((,c (:foreground ,green))))
     `(rainbow-delimiters-depth-4-face   ((,c (:foreground ,orange))))
     `(rainbow-delimiters-depth-5-face   ((,c (:foreground ,violet))))
     `(rainbow-delimiters-unmatched-face ((,c (:foreground ,red :inverse-video t))))
     ;; re-builder
     `(reb-match-0 ((,c (:foreground ,orange   :inverse-video t))))
     `(reb-match-1 ((,c (:foreground ,magenta  :inverse-video t))))
     `(reb-match-2 ((,c (:foreground ,green    :inverse-video t))))
     `(reb-match-3 ((,c (:foreground ,yellow   :inverse-video t))))
     ;; which-key
     `(which-key-key-face                   ((,c (:foreground ,green))))
     `(which-key-group-description-face     ((,c (:foreground ,violet))))
     `(which-key-command-description-face   ((,c (:foreground ,blue))))
     `(which-key-local-map-description-face ((,c (:foreground ,magenta))))
     ;; whitespace
     `(whitespace-tab              ((,c (:foreground ,grey-d))))
     `(whitespace-newline          ((,c (:foreground ,grey-d))))
     `(whitespace-trailing         ((,c (:background ,grey-d))))
     `(whitespace-line             ((,c (:background ,current-line :foreground ,magenta))))
     ;; workgroups2
     `(wg-current-workgroup-face   ((,c (:foreground ,black  :background ,blue))))
     `(wg-other-workgroup-face     ((,c (:foreground ,grey :background ,current-line))))
     `(wg-divider-face             ((,c (:foreground ,grey-d))))
     `(wg-brace-face               ((,c (:foreground ,blue))))

     ;;
     ;; Language-specific
     ;;

     ;; (css|scss)-mode
     `(css-proprietary-property ((,c (:foreground ,orange))))
     `(css-property             ((,c (:foreground ,green))))
     `(css-selector             ((,c (:foreground ,blue))))
     ;; js2-mode
     `(js2-function-param  ((,c (:foreground ,variables))))
     `(js2-function-call   ((,c (:foreground ,functions))))
     `(js2-object-property ((,c (:foreground ,violet))))
     `(js2-jsdoc-tag       ((,c (:foreground ,comments))))
     ;; typescript-mode
     `(ts-object-property  ((,c (:inherit js2-object-property))))
     ;; web-mode
     `(web-mode-doctype-face           ((,c (:foreground ,comments))))
     `(web-mode-html-tag-face          ((,c (:foreground ,methods))))
     `(web-mode-html-tag-bracket-face  ((,c (:foreground ,methods))))
     `(web-mode-html-attr-name-face    ((,c (:foreground ,type))))
     `(web-mode-html-entity-face       ((,c (:foreground ,cyan :italic ,italic))))
     `(web-mode-block-control-face     ((,c (:foreground ,orange))))
     ;;`(web-mode-html-tag-bracket-face  ((,c (:foreground ,operators))))
     ;; markdown-mode
     `(markdown-header-face           ((,c (:foreground ,red :bold ,bold))))
     `(markdown-header-delimiter-face ((,c (:inherit markdown-header-face))))
     `(markdown-blockquote-face ((,c (:foreground ,violet))))
     `(markdown-markup-face     ((,c (:foreground ,operators))))
     `(markdown-pre-face        ((,c (:foreground ,green))))
     `(markdown-inline-face     ((,c (:foreground ,cyan))))
     `(markdown-list-face       ((,c (:foreground ,magenta))))
     `(markdown-link-face       ((,c (:foreground ,blue :bold nil))))
     `(markdown-url-face        ((,c (:foreground ,magenta :bold nil))))
     `(markdown-header-face-1   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-2   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-3   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-4   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-5   ((,c (:inherit markdown-header-face))))
     `(markdown-header-face-6   ((,c (:inherit markdown-header-face))))
     ;;`(markdown-header-rule-face       ((,c (:inherit shadow))))
     ;;`(markdown-italic-face            ((,c (:inherit italic))))
     ;;`(markdown-bold-face              ((,c (:inherit bold))))
     ;;`(markdown-link-face              ((,c (:inherit shadow))))
     ;;`(markdown-link-title-face        ((,c (:inherit link))))
     ;;`(markdown-url-face               ((,c (:inherit link))))
     ;; org-mode
     `(org-tag                   ((,c (:foreground ,yellow :bold nil))))
     ;;`(org-ellipsis            ((,c (:inherit hs-face))))
     `(org-hide                  ((,c (:foreground ,bg))))
     `(org-table                 ((,c (:foreground ,cyan))))
     `(org-quote                 ((,c (:slant italic :foreground ,grey :background ,current-line))))
     `(org-document-info         ((,c (:foreground ,orange))))
     `(org-document-info-keyword ((,c (:foreground ,grey-d))))
     `(org-meta-line             ((,c (:foreground ,doc-comments))))
     `(org-block-begin-line      ((,c (:background ,current-line :foreground ,doc-comments))))
     `(org-block-end-line        ((,c (:inherit org-block-begin-line))))
     `(org-block-background      ((,c (:background ,current-line))))
     `(org-archived              ((,c (:foreground ,grey))))
     `(org-document-title        ((,c (:foreground ,cyan))))
     `(org-level-1               ((,c (:background ,current-line :foreground ,blue :bold ,bold :height 1.2 :box (:line-width 4 :color ,bg-d)))))
     `(org-level-2               ((,c (                          :foreground ,blue-l))))
     `(org-level-3               ((,c (                          :foreground nil))))
     `(org-level-4               ((,c (                          :foreground nil))))
     `(org-level-5               ((,c (                          :foreground nil))))
     `(org-level-6               ((,c (                          :foreground nil))))
     `(org-code                  ((,c (:foreground ,orange))))
     `(org-verbatim              ((,c (:foreground ,green))))
     `(org-formula               ((,c (:foreground ,cyan))))
     `(org-list-dt               ((,c (:foreground ,cyan))))
     `(org-footnote              ((,c (:foreground ,orange))))
     `(org-link                  ((,c (:foreground ,cyan :underline t))))
     `(org-date                  ((,c (:foreground ,violet))))
     `(org-todo                  ((,c (:foreground ,yellow :bold inherit))))
     `(org-done                  ((,c (:foreground ,green  :bold inherit))))
     `(org-headline-done         ((,c (:foreground ,grey :bold nil :strike-through t))))
     `(org-special-keyword       ((,c (:foreground ,magenta))))
     `(org-checkbox              ((,c (:inherit org-todo))))
     `(org-checkbox-statistics-todo ((,c (:inherit org-todo))))
     `(org-checkbox-statistics-done ((,c (:inherit org-done))))
     )

    (custom-theme-set-variables
     'doom-one
     `(vc-annotate-color-map
       '((20 .  ,green)
         (40 .  ,(doom-blend yellow green (/ 1.0 3)))
         (60 .  ,(doom-blend yellow green (/ 2.0 3)))
         (80 .  ,yellow)
         (100 . ,(doom-blend orange yellow (/ 1.0 3)))
         (120 . ,(doom-blend orange yellow (/ 2.0 3)))
         (140 . ,orange)
         (160 . ,(doom-blend magenta orange (/ 1.0 3)))
         (180 . ,(doom-blend magenta orange (/ 2.0 3)))
         (200 . ,magenta)
         (220 . ,(doom-blend red magenta (/ 1.0 3)))
         (240 . ,(doom-blend red magenta (/ 2.0 3)))
         (260 . ,red)
         (280 . ,(doom-blend grey red (/ 1.0 4)))
         (300 . ,(doom-blend grey red (/ 2.0 4)))
         (320 . ,(doom-blend grey red (/ 3.0 4)))
         (340 . ,grey)
         (360 . ,grey)))
     `(vc-annotate-very-old-color nil)
     `(vc-annotate-background ,black))))

(provide-theme 'doom-one)

;; Local Variables:
;; no-byte-compile: t
;; End:
