;CS 403 Programming Languages
;Dr. Lusth
;T.A.:Robinson sec 3429


$ scam
scam> ( + 2 3 )
5
	     |       |
 define this v as    v   this
(define (plus a b) ( + a b))
use: (plus a b)
(define plus +) //reassign operators, operators are functions
(define + -)
(+ 5 3 ) 
2

^ ^ ^ ^		    |
Syntactic sugar for v

(define plus(lambde (a b)(+ a b)))

//print hello world 5 times//

(define (phello n)
	(if (= n 0)
		nil //null//
		(begin
			(println hello)
			(phello (- n 1))
			)
		)
	)

; same as this	|
;     		v
(define (phello n)
	(cond
		((= n 0) nil)
		(else
			(println "hello:")
			(phello ( - n 1 ))
			)
		)
	)

(define (factorial n)
	(define (iter store src)
		(cond
			((= src 1) store)
			(else(iter(* store src)(- src 1)))
			)
		)
	(iter 1 n)
	)
recursive v v v v
(factorial 5)
5 * (factorial 4)
5 * 4 * (factorial 3)

iterative v v v v v
( factorial 5 )xxxxxxxxxx
( iter 1 5)xxxxxx
( iter 20 3)xxxxxxx
(iter 60 2)xxxxxx
(iter 120 1)
120

comments in scam
;begin line comment
;{block comment};

;$ <---comment out til EOF

;traceback scam -t 1


;n! iterative process
;1 formal parameter
;2 base cases	    store  source
;		      | |  |
(define (f n);	      v v  v
	(define (iter a b x)
		(cond
			((= x 0) a)
			(else (iter b (+ a b) (x-1)))
		)
	)
	(iter 0 1 n)
)

; pascal
(x+1)^4		x^4 + 4x^3 + 6x^2 + 4x + 1

       1
      1 1
     1 2 1
    1 3 3 1
   1 4 6 4 1

;5 formal parameters 1 doesnt change
;3-2 base cases

			
		


