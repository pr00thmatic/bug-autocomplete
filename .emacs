;; Autocomplete
(add-to-list 'load-path "/home/vg/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/vg/.emacs.d//ac-dict")
(ac-config-default)

;; Rsense + Autocomplete
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

;; LaTeX math autocomplete ·u· (AUCTex)
(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup()
  (setq ac-sources
	(append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
		ac-sources)))
(add-hook 'latex-mode-hook 'ac-latex-mode-setup)

;;LaTeX autocomplete :D
(add-hook 'latex-mode-hook
	  (lambda()
	    (add-to-list 'ac-sources 'auto-complete-auctex)))


