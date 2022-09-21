#lang racket

;;; LOVECRAFTIAN LISP
;;;
;;; By Janne "HG" Hägglund, 2022-9-16
;;;


;;; narrow-display
;;;
;;; By Janne "HG" Hägglund, 2022-9-17
;;;
;;; For my Lovecraftian Lisp.
;;; When displaying lists, DrRacket prints a space between each element of
;;; a list, to make it more readable.
;;;
;;; THAT WON'T DO!  This is to make Lovecraftian Lisp more obfuscated,
;;; without needing a simple Unix filter.  Also should make it more portable.
;;;
;;; (Got carried away and made a routine to print *anything* as narrow as
;;;  possible, not just consed empty lists.)


(define (display-narrow x)

  (define (display-narrow-list l)
    ;; If we're here, it has been tested to be a pair
    (display-narrow (car l))
    (let ((next (cdr l)))
      (and (not (null? next))   ;; If end of list, just stop
	   (if (pair? next)
	       (display-narrow-list next)
	       (begin (display " . ")  ;; Can't be narrow, will screw up reading
		      (display next))))))
	      
  (cond ((null? x)
	 (display "()"))
	((not (pair? x))
	 (display x)
	 (display " "))  ;; So (a b) won't become (ab)
	(else
	 (display "(")
	 (display-narrow-list x)
	 (display ")"))))





(define (lovecraft-encode s)

  (define (int-to-lc-cell i)
    (cond ((= i 0)		
	   '())
	  ((= i 1)
	   '((())))
	  ((even? i)
	   (cons '()
		 (int-to-lc-cell (/ i 2))))
	  (else
	   (cons '(())
		 (int-to-lc-cell (/ (- i 1) 2))))))
  ;; even? already signals an error if not an integer

  
  (define (iter l result)
    (if (null? l)
	result
	(iter (cdr l)
	      (append (list (int-to-lc-cell (char->integer (car l))))
		      result))))
  
  (iter (string->list s) '()))


(display-narrow (lovecraft-encode (read-line)))
(newline)

