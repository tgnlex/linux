(require 'package)
(package initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package)

  (use-package recentf
    :config
    (setq recentf-auto-cleanup 'never
	  recentf-max-saved-items 1000
	  recentf-save-file (concat user-emacs-directory ".recentf"))
    (recentf-mode t)
    :diminish-nil)
	       
