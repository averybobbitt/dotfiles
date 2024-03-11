;; set up packages
(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	    ("melpa-stable" . "https://stable.melpa.org/packages/")
	    ("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;; set variables
(custom-set-variables
 '(auth-source-save-behavior nil)
 '(custom-safe-themes
   '("0ab2aa38f12640ecde12e01c4221d24f034807929c1f859cbca444f7b0a98b3a" default))
 '(package-selected-packages '(ada-mode yaml-mode magit dracula-theme use-package))
 '(warning-suppress-types
   '((comp)
     (ada))))

 
;; install custom packages
(package-install-selected-packages)

;; set theme
(load-theme 'dracula t)

;; clean up interface
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

;; improve scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)
(setq use-dialog-box nil)

;; set tab settings
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; line wrapping
(setq-default fill-column 80)

;; save all autosave/backup files to /tmp
(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

;; file-mode association
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
