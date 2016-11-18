(defun set-go-path ()
  "Set GOPATH and GOBIN"
  (interactive)
  (let (gopath)
    (setq gopath (read-from-minibuffer "GOPATH: " (file-name-directory (or load-file-name buffer-file-name))))
    (message (concat "Setting GOPATH to " gopath))
    (setenv "GOPATH" gopath)
    (setenv "GOBIN" (concat gopath "/bin"))
    )
  )
