(defun gpgthis ()
  ;; set gpg homedir to current directory and restart gpgagent;; very useful !
  (interactive)
  (let ((nm
	 (cond ((string-match "\.gnupg/*$" default-directory) default-directory)
	       ((file-directory-p (concat default-directory  "\.gnupg")) (concat default-directory  "/.gnupg"))
	       ((file-directory-p (concat (dired-get-file-for-visit) "/.gnupg")) (concat (dired-get-file-for-visit) "/.gnupg"))
	       (1 nil))))
    (and nm
	(shell-command "gpgconf --kill all")
	(setenv "GNUPGHOME" nm)
	(setq epg-gpg-home-directory nm))
  ))


(defvar epa-pinentry-mode)
(setq epa-pinentry-mode 'loopback)
