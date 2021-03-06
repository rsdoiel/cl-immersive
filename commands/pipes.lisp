;;;;
;;;; pipes.lisp two functions to.emmulate the pipe symbol and 
;;;; tee program.
;;;;

;;;
;;; pipe-line
;;;
(defun pipe-line (input &rest operations)
  "Pipe line processes a text through sequencial list of functions
  taking the output text of the previous as the input of the next.
  
  Args: 
     input - the text stream to process
     operations - a list of functions to call and apply to input text
  Returns: a value list with first element a string, a list or nil"
  (progn
    (print "pipe-line not implemented.")
    nil))

;;;
;;; pipe-clone
;;;
(defun pipe-fork (input &rest operations)
  "Splits a pipe line of data into multipe lists of operations.
  
  Args:
    input - the text stream to split
    operations - a list of function names to sent the text through
  Returns: a value list with first element a string, a list or nil"
  (progn
    (print "pipe-fork not implmented.")
    nil))

;;;
;;; pipe-merge
;;;
(defun pipe-merge (inputs operation)
  "Merge a list of inputs and apply an operation
  Args: 
    inputs - a list of texts
    operation - a function to process the concatentated inputs
  Returns: a value list with first element a string, a list or nil"
  (progn
    (print "pipe-merge not implemented.")
    nil))

