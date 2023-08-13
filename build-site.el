(require 'ox-publish)

(setq org-publish-project-alist
      (list
       (list "MitOS"
	     :recursive t
	     :base-directory "./contents/"
	     :with-author nil
	     :with-creator
	     t
	     :with-toc t
	     :secction-numbers nil
	     :publishing-directory "./public/"
	     :publishing-function 'org-html-publish-to-html)))

(org-publish-all t)

(message "build complete")
