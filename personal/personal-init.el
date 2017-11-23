;;* Personal config
(global-linum-mode)
(global-hl-line-mode)


(csetq user-full-name "zzb")
(csetq user-mail-address "czb5142@gamil.com")

;;* Org mode
(defvar ora-org-basedir
  (expand-file-name "org/" emacs-d)
  "Org dir should contain: gtd.org, ent.org, diary, and wiki/.")

(defun ora-org-expand (file)
  (expand-file-name file ora-org-basedir))
(setq org-agenda-files
      (mapcar #'ora-org-expand '("gtd.org" "ent.org")))

(setq diary-file (ora-org-expand "diary"))
(setq org-agenda-include-diary t)

;; org-mode wiki
(use-package plain-org-wiki
    :commands plain-org-wiki plain-org-wiki-helm
    :config
    (setq pow-directory
          (ora-org-expand "wiki/")))

;;* Rest
(csetq elfeed-feeds
       '("http://nullprogram.com/feed/"
         "http://emacsredux.com/atom.xml"
         "http://emacs-fu.blogspot.com/feeds/posts/default"
         "http://feeds.feedburner.com/GotEmacs?format=xml"
         "http://www.wisdomandwonder.com/tag/emacs/feed"
         "http://irreal.org/blog/?tag=emacs&feed=rss2"
         "http://jbm.io/categories/emacs/atom.xml"
         "https://www.blogger.com/feeds/4394570295456001999/posts/default/-/Emacs"
         "http://dialectical-computing.de/blog/emacs.xml"
         "http://technomancy.us/feed/atom"
         "https://www.blogger.com/feeds/8696405790788556158/posts/default/-/emacs"
         "http://www.randomsample.de/dru5/taxonomy/term/2/0/feed"
         "https://www.blogger.com/feeds/4166588008280027121/posts/default/-/planetemacsen"
         "http://bling.github.io/atom.xml"
         "http://axisofeval.blogspot.com/feeds/posts/default"
         "http://endlessparentheses.com/atom.xml"
         "http://oremacs.com/atom.xml"))


(global-set-key (kbd "C-c k") 'counsel-ag)
(menu-bar-mode)
(toggle-frame-fullscreen)
(setq company-minimum-prefix-length 2)

(use-package elpy
    :ensure t
    :config
    (elpy-enable))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("Marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
                         ))

 (use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))




(require 'operation-function)

(provide 'personal-init)
