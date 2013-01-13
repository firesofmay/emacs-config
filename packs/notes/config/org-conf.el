;; http://orgmode.org/manual/Activation.html
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-directory "~/Dropbox/Org")
(setq org-agenda-files (list (concat org-directory "/index.org")
                             (concat org-directory "/inbox.org")))

;; http://orgmode.org/manual/Closing-items.html
(setq org-log-done 'time)
(setq org-log-done 'note)

;; http://orgmode.org/manual/Weekly_002fdaily-agenda.html
(setq org-agenda-include-diary t)

;; http://orgmode.org/manual/Setting-up-capture.html
(setq org-default-notes-file (concat org-directory "/inbox.org"))

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))
