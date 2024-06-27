(defun rune/evil-hook () 
  (dolist (mode '(custom-mode
                  eshell-mode 
                  git-rebase-mode 
                  erc-mode 
                  circe-server-mode 
                  circe-chat-mode 
                  circe-query-mode 
                  sauron-mode 
                  term-mode))
    (add-ro-list `evil-emacs-state-modes mode)))
(use-package evil 
  :init 
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-weant-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :hook (evil-mode . rune/evil-hook)
  :config 
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join) 

  (evil-global-set-key 'motion "j" 'evil-nest-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)
  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))

(use-package evil-collection
  :after evil 
  :config 
  (evil-collection-init))
