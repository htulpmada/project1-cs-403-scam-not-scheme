(define (author)
	(println "AUTHOR: Adam Pluth apluth@crimson.ua.edu")
	)

(define (run1)
	(exprTest () )
	)

(define (run3)
	(exprTest () )
	)


(define (run4)
	(exprTest () )
	)


(define (run5)
	(exprTest () )
	)


(define (run6)
	(exprTest () )
	)

(define (run7)
	(exprTest () )
	)

(define (run8)
	(exprTest () )
	)

(define (run9)
	(exprTest () )
	)

(define (run2)
        (define a 1)
        (define b 2)
        (define c 3)
        (define d 4)
        (define e 5)
        (inspect (min5 a b c d e))
	(inspect (min5 e d c b a))
	(inspect (min5 a e c d b))
	(inspect (min5 e c e b a))
	)


(define (run3)
	(define f 0.0)
	(define g 25.0)
	(define h 50.0)
	(define i 75.0)
	(define j 100.0)
	(cym f )
	(cym g )
	(cym h )
	(cym i )
	(cym j )
	)


(define (min5 a b c d e)
	(define (min2 x y)
		(cond 
			((< x y) x)
			(else y)
			)
		)
	(inspect(min2 a (min2 b (min2 c (min2 d e)))))
	)



(define(cym x)
	(define pi 3.14159265358979323846)
	(define px (* x pi))
	(define X (* px .005))
	(define c (cos X))
	(define cval (* c 255))
	(define cval (integer cval))
	(inspect cval)
	(define py (* x pi .01))
	(define y (- 1 (sin py)))
	(define yval (* y 255))
	(define yval (integer yval))
	(inspect yval)
)



(run2)
(run3)

