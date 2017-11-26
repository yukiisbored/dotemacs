(package-initialize)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))

                                        ;
;; GET OF MY LAWN REEEEEEEE
(defconst my-custom-file "~/.emacs.d/custom.el")
(setq custom-file my-custom-file)
(load custom-file 'noerr)

(setq load-prefer-newer t)

(org-babel-load-file "~/.emacs.d/config.org")
