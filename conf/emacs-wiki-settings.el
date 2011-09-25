;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-08-31 04:28:28 Wednesday by saharabear>

;; This  file is free  software; you  can redistribute  it and/or
;; modify it under the terms of the GNU General Public License as
;; published by  the Free Software Foundation;  either version 3,
;; or (at your option) any later version.

;; This file is  distributed in the hope that  it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR  A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You  should have  received a  copy of  the GNU  General Public
;; License along with  GNU Emacs; see the file  COPYING.  If not,
;; write  to  the Free  Software  Foundation,  Inc., 51  Franklin
;; Street, Fifth Floor, Boston, MA 02110-1301, USA.

(require 'emacs-wiki)         
(require 'emacs-wiki-menu)
(require 'emacs-wiki-srctag)
(require 'emacs-wiki-table)         ; better table

(setq emacs-wiki-projects
      `(
        ("Slackware" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Slackware"))
                       (emacs-wiki-project-server-prefix . "../Slackware")
                  (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Slackware")
                  (emacs-wiki-default-page . "../Slackware/WelcomePage.html")))
        ("Redhat" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Redhat"))
                       (emacs-wiki-project-server-prefix . "../Redhat")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Redhat")
                    (emacs-wiki-default-page . "../Redhat/WelcomePage.html")))
        ("FreeBSD" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/FreeBSD"))
                       (emacs-wiki-project-server-prefix . "../FreeBSD")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/FreeBSD")
                    (emacs-wiki-default-page . "../FreeBSD/WelcomePage.html")))
        ("Java" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Java"))
                       (emacs-wiki-project-server-prefix . "../Java")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Java")
                    (emacs-wiki-default-page . "../Java/WelcomePage.html")))
        ("Python" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Python"))
                       (emacs-wiki-project-server-prefix . "../Python")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Python")
                    (emacs-wiki-default-page . "../Python/WelcomePage.html")))
        ("PHP" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/PHP"))
                       (emacs-wiki-project-server-prefix . "../PHP")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/PHP")
                    (emacs-wiki-default-page . "../PHP/WelcomePage.html")))
        ("CS" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/CS"))
                       (emacs-wiki-project-server-prefix . "../CS")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/CS")
                    (emacs-wiki-default-page . "../CS/WelcomePage.html")))
        ("Agorithms" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Agorithms"))
                       (emacs-wiki-project-server-prefix . "../Agorithms")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Agorithms")
                    (emacs-wiki-default-page . "../Agorithms/WelcomePage.html")))
        ("Web" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Web"))
                       (emacs-wiki-project-server-prefix . "../Web")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Web")
                    (emacs-wiki-default-page . "../Web/WelcomePage.html")))
        ("Fashion" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Fashion"))
                       (emacs-wiki-project-server-prefix . "../Fashion")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Fashion")
                    (emacs-wiki-default-page . "../Fashion/WelcomePage.html")))
        ("SE" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/SE"))
                       (emacs-wiki-project-server-prefix . "../SE")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/SE")
                    (emacs-wiki-default-page . "../SE/WelcomePage.html")))
        ("C" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/C"))
                (emacs-wiki-project-server-prefix . "../C")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/C")
                    (emacs-wiki-default-page . "../C/WelcomePage.html")))
        ("LifeStyle" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/LifeStyle"))
                        (emacs-wiki-project-server-prefix . "../LifeStyle")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/LifeStyle")
                    (emacs-wiki-default-page . "../LifeStyle/WelcomePage.html")))
        ("Server" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Server"))
                     (emacs-wiki-project-server-prefix . "../Server")
                    (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Server")
                    (emacs-wiki-default-page . "../LifeStyle/WelcomePage.html")))
        ("Default" . ((emacs-wiki-directories . ("~/saharabear/haulyn/haulynwiki/Default"))
                       (emacs-wiki-project-server-prefix . "../Default")
                      (emacs-wiki-publishing-directory . "~/saharabear/haulyn/haulynwiki/WebWiki/Default")
                      (emacs-wiki-default-page . "../Default/WelcomePage.html")))
        )
      )
(setq emacs-wiki-index-page  "WiKiIndex")
(setq emacs-wiki-default-page "WelcomePage")
(setq emacs-wiki-meta-charset "utf-8") 
(setq emacs-wiki-meta-content-coding "utf-8")
(setq emacs-wiki-maintainer "mailto:saharabear@gmail.com") 
(setq emacs-wiki-inline-relative-to 'emacs-wiki-publishing-directory)

;;(setq emacs-wiki-menu-factory 'emacs-wiki-menu-make-from-list)
;;(setq emacs-wiki-menu-definition '(("Default" "../Default/WebWiki/WelcomePage.html" "")
;;                                   ("Server" "../Server/WebWiki/WelcomePage.html" "")))

  (defun emacs-wiki-preview-source ()
    (interactive)
    (emacs-wiki-publish-this-page)
    (find-file (emacs-wiki-published-file)))
  (defun emacs-wiki-preview-html ()
    (interactive)
    (emacs-wiki-publish-this-page)
    (browse-url (emacs-wiki-published-file)))


 ;;;_+ Automatically publish files upon saving
 (defun sacha-emacs-wiki-auto-publish ()
   (when (derived-mode-p 'emacs-wiki-mode)
     (unless emacs-wiki-publishing-p
       (let ((emacs-wiki-publishing-p t)
             (emacs-wiki-after-wiki-publish-hook nil))
    (emacs-wiki-publish-this-page)))))
 (add-hook 'emacs-wiki-mode-hook
           (lambda () (add-hook 'after-save-hook
                                'sacha-emacs-wiki-auto-publish
                                nil t)))


(setq emacs-wiki-publishing-header "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">
<html>
  <head>
    <title><lisp>(emacs-wiki-page-title)</lisp></title>
    <meta name=\"generator\" content=\"emacs-wiki.el\" />
    <meta http-equiv=\"<lisp>emacs-wiki-meta-http-equiv</lisp>\"
          content=\"<lisp>emacs-wiki-meta-content</lisp>\" />
    <link rel=\"made\" href=\"<lisp>emacs-wiki-maintainer</lisp>\" />
    <link rel=\"home\" href=\"<lisp>(emacs-wiki-published-name
                                     emacs-wiki-default-page)</lisp>\" />
    <link rel=\"index\" href=\"<lisp>(emacs-wiki-published-name
                                      emacs-wiki-index-page)</lisp>\" />
    <lisp>emacs-wiki-style-sheet</lisp>
  </head>
  <body>

    <!-- If you want a menu, uncomment the following lines and
    put (require 'emacs-wiki-menu) in your Emacs setup somewhere.
     -->
    <lisp>(when (boundp 'emacs-wiki-menu-factory)
            (funcall emacs-wiki-menu-factory))</lisp>
    

    <h1 id=\"top\"><lisp>(emacs-wiki-page-title)</lisp></h1>

    <!-- Page published by Emacs Wiki begins here -->
")


(setq emacs-wiki-publishing-footer
  "
    <!-- Page published by Emacs Wiki ends here -->
    <div class=\"navfoot\">
      <hr />
      <table width=\"100%\" border=\"0\" summary=\"Footer navigation\">
        <col width=\"33%\" /><col width=\"34%\" /><col width=\"33%\" />
        <tr>
          <td align=\"left\">
            <lisp>
              (if buffer-file-name
                  (concat
                   \"<span class=\\\"footdate\\\">Updated: \"
                   (format-time-string emacs-wiki-footer-date-format
                    (nth 5 (file-attributes buffer-file-name)))
                   (and emacs-wiki-serving-p
                        (emacs-wiki-editable-p (emacs-wiki-page-name))
                        (concat
                         \" / \"
                         (emacs-wiki-link-href
                          (concat \"editwiki?\" (emacs-wiki-page-name))
                          \"Edit\")))
                   \"</span>\"))
            </lisp>
          </td>
          <td align=\"center\">
            <span class=\"foothome\">
              <lisp>
                (concat
                 (and (emacs-wiki-page-file emacs-wiki-default-page t)
                      (not (emacs-wiki-private-p emacs-wiki-default-page))
                      (concat
                       (emacs-wiki-link-href emacs-wiki-default-page \"Home\")
                       \" / \"))
                 (emacs-wiki-link-href emacs-wiki-index-page \"Index\")
                 (and (emacs-wiki-page-file \"ChangeLog\" t)
                      (not (emacs-wiki-private-p \"ChangeLog\"))
                      (concat
                       \" / \"
                       (emacs-wiki-link-href \"ChangeLog\" \"Changes\"))))
              </lisp>
            </span>
          </td>
          <td align=\"right\">
            <lisp>
              (if emacs-wiki-serving-p
                  (concat
                   \"<span class=\\\"footfeed\\\">\"
                   (emacs-wiki-link-href \"searchwiki?get\" \"Search\")
                   (and buffer-file-name
                        (concat
                         \" / \"
                         (emacs-wiki-link-href
                          (concat \"searchwiki?q=\" (emacs-wiki-page-name))
                          \"Referrers\")))
                   \"</span>\"))
            </lisp>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>\n"
)


(provide 'emacs-wiki-settings)
