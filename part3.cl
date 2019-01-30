;;; This is the IDE's built-in-editor, where you create and edit
;;; lisp source code.  You could use some other editor instead,
;;; though the IDE's menu-bar commands would not be applicable there.
;;; 
;;; This editor has a tab for each file that it's editing.  You can
;;; create a new editor buffer at any time with the File | New command.
;;; Other commands such as Search | Find Definitions will create
;;; editor buffers automatically for existing code.
;;; 
;;; You can use the File | Compile and Load command to compile and
;;; load an entire file, or compile an individual definition by
;;; placing the text cursor inside it and using Tools | Incremental
;;; Compile.  You can similarly evaluate test expressions in the
;;; editor by using Tools | Incremental Evaluation; the returned
;;; values and any printed output will appear in a lisp listener
;;; in the Debug Window.
;;; 
;;; For a brief introduction to other IDE tools, try the
;;; Help | Interactive IDE Intro command.  And be sure to explore
;;; the other facilities on the Help menu.

(defun remove-symbol(symbol list) "Remove all the symbols in the list"
  (cond ((equal (length list) 0) nil)
        ((equal symbol (first list)) (remove-symbol symbol (rest list)))
        ((cons (first list)(remove-symbol symbol (rest list))))))

(defun find-first(bool list) "find first predicate list"
  (cond ((equal (length list) 0) nil)
        ((funcall bool (first list)) (first list))
        ((find-first bool (rest list))))
  )

(defun compose (f g) "return a function representing the composition of f and g"
  (lambda (args) (Funcall f (funcall g args)))
  
  )