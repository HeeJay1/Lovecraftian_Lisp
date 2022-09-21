#lang racket

;;; LOVECRAFTIAN LISP
;;;
;;; By Janne "HG" Hägglund, 2022-9-16
;;;


(define (lovecraft-decode lc)
  
  (define (lc-cell-to-int l)
    (cond ((null? l)
	   0)
	  ((null? (car l))
	   (* 2 (lc-cell-to-int (cdr l))))
	  ((null? (caar l))
	   (+ 1 (* 2 (lc-cell-to-int (cdr l)))))
	  (else (error "lc-cell-to-int: Input not Lovecraftian"))))
  
  (define (iter l result)
    (if (null? l)
	result
	(iter (cdr l)
	      (append (list (integer->char (lc-cell-to-int (car l))))
		      result))))
  
  
  (list->string (iter lc '())))

(display (lovecraft-decode (read)))
(newline)

	      
