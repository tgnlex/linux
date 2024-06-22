  (use-package recentf
    :config
    (setq recentf-auto-cleanup 'never
	  recentf-max-saved-items 1000
	  recentf-save-file (concat user-emacs-directory ".recentf"))
    (recentf-mode t)
    :diminish-nil)
	       
