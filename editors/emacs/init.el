(setq config-settings "./config/settings.el")
(setq config-pkgs "./config/pkgs.el")
(setq config-keymaps "./config/keymaps.el")
(setq recentf-config) "./packages/recentf.el")
(setq evil-config "./packages/evil.el")

(load-file config-settings)
(load-file config-pkgs)
(load-file config-keymaps)
(load-file evil-config)
(load-theme 'deeper-blue t)
	   
