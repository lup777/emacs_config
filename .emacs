(setq unix-init-path         "~/.emacs.d")

                                        ; use more repositories for elpa
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

;; offset
;; http://www.emacs.uniyar.ac.ru/doc/html/emacs_27.html
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq-default c-basic-offset 4)
(setq c-default-style
      '((c++-mode . "awk") (java-mode . "java") (other . "gnu")))

;; buffer list
(global-set-key (kbd "C-x w") 'buffer-menu)
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; закладки
(setq-default bookmark-save-flag 1)
(setq bookmark-save-flag t) ;; автоматически сохранять закладки
(global-set-key (kbd "C-x <f6>") 'insert-bookmark-location)
(global-set-key (kbd "<f6>") 'list-bookmarks)

;; C-x r m RET - заложить закладку в текущем файле в позиции тчки
;; C-x r b - перейти к закладке с именем ЗАКЛАДКА
;; C-x r l - перечислить все зкладки
;; M-x bookmark-save - сохранить все текущие значения закладок в файле закладок, используемом по умолчанию


;; SUDO

;; C-x C-f /sudo::/<path>

;; show paren - mode
(show-paren-mode t) ;; включить подсветку скобок
;; (setq show-paren-style 'expression) ;; выделить цветом содержимое скобок

;; Disable GUI components
(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню
(tool-bar-mode     -1) ;; отключаем tool-bar
(scroll-bar-mode   -1) ;; отключаем полосу прокрутки
(blink-cursor-mode -1) ;; курсор не мигает
(setq use-dialog-box     nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал

;; Coding-system settings
(set-language-environment 'UTF-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq-default coding-system-for-read    'utf-8)
(setq file-name-coding-system           'utf-8)
(set-selection-coding-system            'utf-8)
(set-keyboard-coding-system        'utf-8-unix)
(set-terminal-coding-system             'utf-8)
(prefer-coding-system                   'utf-8)

(line-number-mode   t) ;; показать номер строки в mode-line

(setq-default indicate-empty-lines t) ;; отсутствие строки выделить глифами рядом с полосой с номером строки


;; Scrolling settings
(setq scroll-step               1) ;; вверх-вниз по 1 строке
(setq scroll-margin            10) ;; сдвигать буфер верх/вниз когда курсор в 10 шагах от верхней/нижней границы
(setq scroll-conservatively 10000)

;; Short messages
(defalias 'yes-or-no-p 'y-or-n-p)

;; Clipboard settings
(setq x-select-enable-clipboard t) ;;общий с ОС буффер обмена

;; Easy transition between buffers: M-arrow-keys
(if (equal nil (equal major-mode 'org-mode))
    (windmove-default-keybindings 'meta))


;; Delete trailing whitespaces, format buffer and untabify when save buffer
(defun format-current-buffer()
  (if (y-or-n-p (format "Do You want to format this buffer? "))
      (indent-region (point-min) (point-max))))

(defun untabify-current-buffer()
  (if (not indent-tabs-mode)
                                        ;      (if (y-or-n-p (format "Do You want to untabify this buffer? "))
      (untabify (point-min) (point-max)))
  nil)
                                        ;   )
(add-to-list 'write-file-functions 'format-current-buffer)
(add-to-list 'write-file-functions 'untabify-current-buffer)
(add-to-list 'write-file-functions 'delete-trailing-whitespace)


;; THEMES

;;(add-to-list 'load-path "~/.emacs.d/color-theme/themes/replace-colorthemes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme/themes/replace-colorthemes")

;;(require 'color-theme)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (gray30)))
 '(custom-safe-themes
   (quote
    ("0a759e2d347087387975fa32c746a28baa5c9566da8ee7de30041f240fe9fb90" "d997aeeeee58b73a21626338ab53a7677fa6b8302b7a5aa6763e54881d6fe865" "d16104d0c3492cbce936fcbb390a3a8e609bef7e4a754d45b5016c39f77e1d16" "d5362cfb57b6ce413de22097f4d270876d66594bf8da1ddacea44a3da1904b06" "d365ceafc043ed6827e9dd607ef5d8ee80edc12fdb075b0bf515ad1dda0620f5" "638f06a6949b893a964844774cdfc3fef565d4981ed11c300ed6dc091d5462b3" "a817c9097de6e7297e4ea0e91883b190cfe56b15fcca316db0e37fca2a59a333" "02d92dc4e8683fa0deab833f1a7d7ea6a6f6db24a242d514eedf3b30e800957b" "9735587ec27758878e9576e4b5acd1c0650eb23f1ae875d49b8a0f2078e492c8" "cd8162d964ce44650e07b9a94bf07c6a8ea7df47ca3c1d6273c23a36e41ad874" "7395773a233824d1b766c5d13c3d0ebaea210affc2d9ec9862f61dd57a0c7bff" "547711625ab82519f513c80f0e1dde00b583006bce26332648d6b7ee8dce51ad" "0df73a5bbd739057e3f0707a6d23e35aac6303bc1ec84b02ca76e66e2a5a5607" "a5b2b78087f7489f100ae5599b18b34bac9c641ec016a60d3e17de3c1f3521a3" "c5cf365eda45598254321ea22d93f4cd92c44ae2d09d7e499093c846d7e6a193" "fe8119a60cb66bdf31f29523097ea2185d152bd4a737b861242e76196359ef34" "f8a65eef432c778f02a8d6e04a9227d28e50c3b0dc7cc90ef0e9981f294bb782" "7e953599da2ddda65990a88923514d85998a8fb085772d0590c77c4d5af9b3c4" "03af6156edde9e94fca30a82be5ee6fe4335f83f19e32a003588e2f94e55c547" "d96f801e464900f469a87a406dff708bd5082ca801e8bbb5887ddbc43b2efca2" "27e82fd5426f5ad5bfdaa24dd16b6d70392200f00bf608631bd12dbbbd824e65" "747fc7fbca947649e41abc87cced331faea17f745ea2537c6980b5bbb5f5fac8" "f68af4716f1d3a018ff3ced14d0ae44adbae813560f655b84850ff56fd35d2f6" "d422c7673d74d1e093397288d2e02c799340c5dabf70e87558b8e8faa3f83a6c" "cc2f32f5ee19cbd7c139fc821ec653804fcab5fcbf140723752156dc23cdb89f" "a5a2954608aac5c4dcf9659c07132eaf0da25a8f298498a7eacf97e2adb71765" "68b847fac07094724e552eeaf96fa4c7e20824ed5f3f225cad871b8609d50ace" "1c10e946f9a22b28613196e4c02b6508970e3b34660282ec92d9a1c293ee81bb" "80a23d559a5c5343a0882664733fd2c9e039b4dbf398c70c424c8d6858b39fc5" "1342a81078bdac27f80b86807b19cb27addc1f9e4c6a637a505ae3ba4699f777" "45482e7ddf47ab1f30fe05f75e5f2d2118635f5797687e88571842ff6f18b4d5" "938f120eeda938eef2c36b4cc9609d1ad91b3a3666cd63a4be5b70b739004942" "53de65a1e7300e0f1a4f8bf317530a5008e9d06a0e2f8863b80dc56d77f844cf" "a621dd9749f2651e357a61f8d8d2d16fb6cacde3b3784d02151952e1b9781f05" "76935a29af65f8c915b1b3b4f6326e2e8d514ca098bd7db65b0caa533979fc01" "62a6731c3400093b092b3837cff1cb7d727a7f53059133f42fcc57846cfa0350" "0f302165235625ca5a827ac2f963c102a635f27879637d9021c04d845a32c568" "998aec317c45ba985ca740770a30cfc5e2ec3a8d5c0d626c011bfcd11f7dabd0" "b6f06081b007b57be61b82fb53f27315e2cf38fa690be50d6d63d2b62a408636" "31772cd378fd8267d6427cec2d02d599eee14a1b60e9b2b894dd5487bd30978e" "2ae4b0c50dd49a5f74edeae3e49965bf8853954b63c5712a7967ea0a008ecd5b" "b48599e24e6db1ea612061252e71abc2c05c05ac4b6ad532ad99ee085c7961a7" "daeaa8249f0c275de9e32ed822e82ff40457dabe07347fe06afc67d962a3b1e9" "ff6a8955945028387ed1a2b0338580274609fbb0d40cd011b98ca06bd00d9233" "5e402ccb94e32d7d09e300fb07a62dc0094bb2f16cd2ab8847b94b01b9d5e866" "4e7e04c4b161dd04dc671fb5288e3cc772d9086345cb03b7f5ed8538905e8e27" "701b4b4e7989329a0704b92fc17e6600cc18f9df4f2466617ec91c932b5477eb" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "a455366c5cdacebd8adaa99d50e37430b0170326e7640a688e9d9ad406e2edfd" "be5b03913a1aaa3709d731e1fcfd4f162db6ca512df9196c8d4693538fa50b86" "7bd626fcc9fbfb44186cf3f08b8055d5a15e748d5338e47f9391d459586e20db" "392f19e7788de27faf128a6f56325123c47205f477da227baf6a6a918f73b5dc" "39a854967792547c704cbff8ad4f97429f77dfcf7b3b4d2a62679ecd34b608da" "0c5204945ca5cdf119390fe7f0b375e8d921e92076b416f6615bbe1bd5d80c88" "9bd5ee2b24759fbc97f86c2783d1bf8f883eb1c0dd2cf7bda2b539cd28abf6a9" "a513bb141af8ece2400daf32251d7afa7813b3a463072020bb14c82fd3a5fe30" "77515a438dc348e9d32310c070bfdddc5605efc83671a159b223e89044e4c4f1" "da8e6e5b286cbcec4a1a99f273a466de34763eefd0e84a41c71543b16cd2efac" "5c83b15581cb7274085ba9e486933062652091b389f4080e94e4e9661eaab1aa" "3fe4861111710e42230627f38ebb8f966391eadefb8b809f4bfb8340a4e85529" "67b11ee5d10f1b5f7638035d1a38f77bca5797b5f5b21d16a20b5f0452cbeb46" "6e03b7f86fcca5ce4e63cda5cd0da592973e30b5c5edf198eddf51db7a12b832" "db510eb70cf96e3dbd48f5d24de12b03db30674ea0853f06074d4ccf7403d7d3" "1a094b79734450a146b0c43afb6c669045d7a8a5c28bc0210aba28d36f85d86f" "780c67d3b58b524aa485a146ad9e837051918b722fd32fd1b7e50ec36d413e70" "a11043406c7c4233bfd66498e83600f4109c83420714a2bd0cd131f81cbbacea" "8530b2f7b281ea6f263be265dd8c75b502ecd7a30b9a0f28fa9398739e833a35" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "5eb4b22e97ddb2db9ecce7d983fa45eb8367447f151c7e1b033af27820f43760" "ed92c27d2d086496b232617213a4e4a28110bdc0730a9457edf74f81b782c5cf" "595099e6f4a036d71de7e1512656e9375dd72cf60ff69a5f6d14f0171f1de9c1" "11e5e95bd3964c7eda94d141e85ad08776fbdac15c99094f14a0531f31a156da" "f831c1716ebc909abe3c851569a402782b01074e665a4c140e3e52214f7504a0" "6cf0e8d082a890e94e4423fc9e222beefdbacee6210602524b7c84d207a5dfb5" "9dc64d345811d74b5cd0dac92e5717e1016573417b23811b2c37bb985da41da2" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "09feeb867d1ca5c1a33050d857ad6a5d62ad888f4b9136ec42002d6cdf310235" "d9e811d5a12dec79289c5bacaecd8ae393d168e9a92a659542c2a9bab6102041" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "63aff36a40f41b28b0265ac506faa098fd552fac0a1813b745ba7c27efa5a943" "fe349b21bb978bb1f1f2db05bc87b2c6d02f1a7fe3f27584cd7b6fbf8e53391a" "aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3" "fc1137ae841a32f8be689e0cfa07c872df252d48426a47f70dba65f5b0f88ac4" "0ca71d3462db28ebdef0529995c2d0fdb90650c8e31631e92b9f02bd1bfc5f36" "cb39485fd94dabefc5f2b729b963cbd0bac9461000c57eae454131ed4954a8ac" "5f4dfda04fbf7fd55228266c8aab73953d3087cea7fd06dd7f8ff1e4a497c739" "3ed2e1653742e5059e3d77af013ee90c1c1b776d83ec33e1a9ead556c19c694b" "b5cff93c3c6ed12d09ce827231b0f5d4925cfda018c9dcf93a2517ce3739e7f1" "8e7044bfad5a2e70dfc4671337a4f772ee1b41c5677b8318f17f046faa42b16b" "4bcdfc98cf64ce6145684dc8288fd87489cfa839e07f95f6c791d407624d04f8" "335ad769bcd7949d372879ec10105245255beec6e62213213835651e2eb0b8e0" "6c0d748fb584ec4c8a0a1c05ce1ae8cde46faff5587e6de1cc59d3fc6618e164" "6291d73aaeb6a3d7e455d85ca3865260a87afe5f492b6d0e2e391af2d3ea81dd" "01e0367d8c3249928a2e0ebc9807b2f791f81a0d2a7c8656e1fbf4b1dbaa404c" "6b4f7bde1ce64ea4604819fe56ff12cda2a8c803703b677fdfdb603e8b1f8bcb" "cb30d82b05359203c8378638dec5ad6e37333ccdda9dee8b9fdf0c902e83fad7" "28818b9b1d9e58c4fb90825a1b07b0f38286a7d60bf0499bc2dea7eea7e36782" "011d4421eedbf1a871d1a1b3a4d61f4d0a2be516d4c94e111dfbdc121da0b043" "70b2d5330a8dd506accac4b51aaa7e43039503d000852d7d152aec2ce779d96d" "995d0754b79c4940d82bd430d7ebecca701a08631ec46ddcd2c9557059758d33" "5c5de678730ceb4e05794431dd65f30ffe9f1ed6c016fa766cdf909ba03e4df4" "ec0c9d1715065a594af90e19e596e737c7b2cdaa18eb1b71baf7ef696adbefb0" "c39142cd89505a1b05130b65c85aed93e5a46426424a9143214cdb1778dbc8ce" "aaf783d4bfae32af3e87102c456fba8a85b79f6e586f9911795ea79055dee3bf" "aae40caa1c4f1662f7cae1ebfbcbb5aa8cf53558c81f5bc15baefaa2d8da0241" "880f541eabc8c272d88e6a1d8917fe743552f17cedd8f138fe85987ee036ad08" "bce1c321471d37b875f99c83cb7b451fd8386001259e1c0909d6e078ea60f00b" "f19d195fa336e9904303eea20aad35036b79cfde72fa6e76b7462706acd52920" "2ea9afebc23cca3cd0cd39943b8297ce059e31cb62302568b8fa5c25a22db5bc" "44f5578eccb2cde3b196dfa86a298b75fe39ceff975110c091fa8c874c338b50" "c51e302edfe6d2effca9f7c9a8a8cfc432727efcf86246002a3b45e290306c1f" "b71da830ae97a9b70d14348781494b6c1099dbbb9b1f51494c3dfa5097729736" "1127f29b2e4e4324fe170038cbd5d0d713124588a93941b38e6295a58a48b24f" "abd7719fd9255fcd64f631664390e2eb89768a290ee082a9f0520c5f12a660a8" "0973b33d2f15e6eaf88400eee3dc8357ad8ae83d2ca43c125339b25850773a70" "deb7ae3a735635a85c984ece4ce70317268df6027286998b0ea3d10f00764c9b" "e26e879d250140e0d4c4d5ab457c32bcb29742599bd28c1ce31301344c6f2a11" "cdc2a7ba4ecf0910f13ba207cce7080b58d9ed2234032113b8846a4e44597e41" "a02c000c95c43a57fe1ed57b172b314465bd11085faf6152d151385065e0e4b1" "0e8c264f24f11501d3f0cabcd05e5f9811213f07149e4904ed751ffdcdc44739" "fb09acc5f09e521581487697c75b71414830b1b0a2405c16a9ece41b2ae64222" "72c530c9c8f3561b5ab3bf5cda948cd917de23f48d9825b7a781fe1c0d737f2f" "d8a7a7d2cffbc55ec5efbeb5d14a5477f588ee18c5cddd7560918f9674032727" "ff8c6c2eb94e776c9eed9299a49e07e70e1b6a6f926dec429b99cf5d1ddca62a" "6a674ffa24341f2f129793923d0b5f26d59a8891edd7d9330a258b58e767778a" "05d009b7979e3887c917ef6796978d1c3bbe617e6aa791db38f05be713da0ba0" "b4fd44f653c69fb95d3f34f071b223ae705bb691fb9abaf2ffca3351e92aa374" "1f126eb4a1e5d6b96b3faf494c8c490f1d1e5ad4fc5a1ce120034fe140e77b88" "1a2cde373eff9ffd5679957c7ecfc6249d353e1ee446d104459e73e924fe0d8a" "2047464bf6781156ebdac9e38a17b97bd2594b39cfeaab561afffcbbe19314e2" "2d5c40e709543f156d3dee750cd9ac580a20a371f1b1e1e3ecbef2b895cf0cd2" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(vc-annotate-background "#93a1a1")
 '(vc-annotate-color-map
   (quote
    ((20 . "#990A1B")
     (40 . "#FF6E64")
     (60 . "#cb4b16")
     (80 . "#7B6000")
     (100 . "#b58900")
     (120 . "#DEB542")
     (140 . "#546E00")
     (160 . "#859900")
     (180 . "#B4C342")
     (200 . "#3F4D91")
     (220 . "#6c71c4")
     (240 . "#9EA0E5")
     (260 . "#2aa198")
     (280 . "#69CABF")
     (300 . "#00629D")
     (320 . "#268bd2")
     (340 . "#69B7F0")
     (360 . "#d33682"))))
 '(vc-annotate-very-old-color "#93115C"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; autocomplete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")

(require 'popup)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start        t)
(setq ac-auto-show-menu    t)
(global-auto-complete-mode t)
(add-to-list 'ac-modes   'lisp-mode)
(add-to-list 'ac-sources 'ac-source-semantic) ;; искать автодополнения в CEDET
(add-to-list 'ac-sources 'ac-source-variables) ;; среди переменных
(add-to-list 'ac-sources 'ac-source-functions) ;; в названиях функций
(add-to-list 'ac-sources 'ac-source-dictionary) ;; в той папке где редактируемый буфер
(add-to-list 'ac-sources 'ac-source-words-in-all-buffer) ;; по всему буферу
(add-to-list 'ac-sources 'ac-source-files-in-current-dir)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


(defun win-resize-top-or-bot ()
  "Figure out if the current window is on top, bottom or in the
middle"
  (let* ((win-edges (window-edges))
         (this-window-y-min (nth 1 win-edges))
         (this-window-y-max (nth 3 win-edges))
         (fr-height (frame-height)))
    (cond
     ((eq 0 this-window-y-min) "top")
     ((eq (- fr-height 1) this-window-y-max) "bot")
     (t "mid"))))

(defun win-resize-left-or-right ()
  "Figure out if the current window is to the left, right or in the
middle"
  (let* ((win-edges (window-edges))
         (this-window-x-min (nth 0 win-edges))
         (this-window-x-max (nth 2 win-edges))
         (fr-width (frame-width)))
    (cond
     ((eq 0 this-window-x-min) "left")
     ((eq (+ fr-width 4) this-window-x-max) "right")
     (t "mid"))))

(defun win-resize-enlarge-horiz ()
  (interactive)
  (cond
   ((equal "top" (win-resize-top-or-bot)) (enlarge-window -1))
   ((equal "bot" (win-resize-top-or-bot)) (enlarge-window 1))
   ((equal "mid" (win-resize-top-or-bot)) (enlarge-window -1))
   (t (message "nil"))))

(defun win-resize-minimize-horiz ()
  (interactive)
  (cond
   ((equal "top" (win-resize-top-or-bot)) (enlarge-window 1))
   ((equal "bot" (win-resize-top-or-bot)) (enlarge-window -1))
   ((equal "mid" (win-resize-top-or-bot)) (enlarge-window 1))
   (t (message "nil"))))

(defun win-resize-enlarge-vert ()
  (interactive)
  (cond
   ((equal "left" (win-resize-left-or-right)) (enlarge-window-horizontally -1))
   ((equal "right" (win-resize-left-or-right)) (enlarge-window-horizontally 1))
   ((equal "mid" (win-resize-left-or-right)) (enlarge-window-horizontally -1))))

(defun win-resize-minimize-vert ()
  (interactive)
  +  (cond
      ((equal "left" (win-resize-left-or-right)) (enlarge-window-horizontally 1))
      ((equal "right" (win-resize-left-or-right)) (enlarge-window-horizontally -1))
      ((equal "mid" (win-resize-left-or-right)) (enlarge-window-horizontally 1))))

(progn
  (global-set-key (kbd "M-*") 'win-resize-minimize-vert) ;; down
  (global-set-key (kbd "M-/") 'win-resize-enlarge-vert) ;; up
  (global-set-key (kbd "M-+") 'win-resize-minimize-horiz) ;; left
  (global-set-key (kbd "M--") 'win-resize-enlarge-horiz)) ;; right

(defun search-selection (beg end)
  "search for selected text"
  (interactive "r")
  (let (
        (selection (buffer-substring-no-properties beg end))
        )
    (deactivate-mark)
    (isearch-mode t nil nil nil)
    (isearch-yank-string selection)
    )
  )
(define-key global-map (kbd "C-f") 'search-selection)
