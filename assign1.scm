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
	(inpsect (min5 e d c b a))
	(inpsect (min5 a e c d b))
	(inpsect (min5 e c e b a))
	)


(define (run3)
	(inspect(cym 0) )
	(inspect(cym 25) )
	(inspect(cym 50) )
	(inspect(cym 75) )
	(inspect(cym 100) )
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
	(define c (cos x)
	(define y (
	)



(run2)
(run3)

