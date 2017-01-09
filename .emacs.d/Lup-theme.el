(deftheme Lup
  "Created 2016-11-29.")

(custom-theme-set-faces
 'Lup
 '(default ((t (:family "default" :foundry "default" :width normal :height 1 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "gainsboro" :background "gray30" :stipple nil :inherit nil))))
 '(cursor ((t (:background "black"))))
 '(fixed-pitch ((t (:background "black" :foreground "cyan" :family "Monospace"))))
 '(variable-pitch ((t (:background "yellow" :foreground "magenta" :inverse-video t :family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "medium blue"))))
 '(highlight ((t (:background "darkolivegreen"))))
 '(region ((t (:background "blue3"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:background "SkyBlue4"))))
 '(trailing-whitespace ((t (:background "red"))))
 '(font-lock-builtin-face ((t (:underline (:color foreground-color :style line) :foreground "LightSkyBlue"))))
 '(font-lock-comment-delimiter-face ((t (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:slant oblique :foreground "lightgreen"))))
 '(font-lock-constant-face ((t (:foreground "Aquamarine"))))
 '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:height 1.05 :weight bold :foreground "DodgerBlue"))))
 '(font-lock-keyword-face ((t (:height 1.05 :foreground "LightPink"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "white" :weight bold))))
 '(font-lock-type-face ((t (:height 1.05 :foreground "yellow"))))
 '(font-lock-variable-name-face ((t (:foreground "gold"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "Pink"))))
 '(button ((t (:underline (:color foreground-color :style line)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "cyan"))))
 '(link-visited ((t (:foreground "violet" :inherit (link)))))
 '(fringe ((((class color) (background light)) (:background "grey95")) (((class color) (background dark)) (:background "grey10")) (t (:background "gray"))))
 '(header-line ((t (:box nil :foreground "grey90" :background "grey20"))))
 '(tooltip ((t (:foreground "black" :background "lightyellow"))))
 '(mode-line ((t (:box (:line-width -1 :color nil :style released-button) :foreground "black" :background "grey75"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color "grey40" :style nil) :foreground "grey80" :background "grey30"))))
 '(isearch ((t (:foreground "brown4" :background "palevioletred2"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:background "paleturquoise4"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'Lup)
