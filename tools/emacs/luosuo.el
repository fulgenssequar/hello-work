;; 啰嗦者麻烦也

(defun luosuo()
  (interactive)
  (evil-mode t)
  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
  (define-key evil-normal-state-map (kbd "U") 'evil-lookup)
  (define-key evil-normal-state-map (kbd "D") 'evil-join)
  (define-key evil-normal-state-map (kbd "K") 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "J") 'evil-scroll-down)
;;  (define-key evil-normal-state-map (kbd "gj") 'evil-next-line)
;;  (define-key evil-normal-state-map (kbd "gk") 'evil-previous-line)

  (linum-mode 1)
  (show-paren-mode 1)
  (highlight-parentheses-mode 1)
  (undo-tree-mode 1)
  ;;  (global-set-key (kbd "C-;") 'other-window)
  (global-set-key (kbd "M-j") 'other-window)
  (local-set-key (kbd "M-j") 'other-window)
  (global-set-key (kbd "M-J") (lambda () (interactive) (other-window -1)))
  (local-set-key (kbd "M-J") (lambda () (interactive) (other-window -1))))
