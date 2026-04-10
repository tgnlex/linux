(require 'package)
(package initialize)
(add-to-list 'package-archives
	     '("melpa",  "http://melpa.milkbox.net/packages/") t)
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package)

  	       
