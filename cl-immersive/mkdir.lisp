;;;;
;;;; Wrap the Unix mkdir command
;;;;
(defun mkdir (pathname &optional (parent nil))
  "mkdir is a wrapper of the Unix make directory command. Without parameters
  it will change the working directory to the value of $HOME.

  Args: pathname, parent (optional, default is nil)
 
  + pathname is the path (relative or full) the directory you want to create.
  + parent if true will attempt to create the parent directories as requested by
    pathname

  Side effects: Changes the working directory.

  Returns: The new working directory location as a pathname."
  (progn
    (if parent
      (shell (concatenate 'string "mkdir -p "
			  (symbol-name-to-lowercase-string pathname)))
      (shell (concatenate 'string "mkdir "
			  (symbol-name-to-lowercase-string pathname)))
      (shell (concatenate 'string "ls -ld " 
			  (symbol-name-to-lowercase-string pathname))))))


