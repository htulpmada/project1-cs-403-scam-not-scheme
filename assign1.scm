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


(define (run2)
	(define a 1)
	(define b 2)
	(define c 3)
	(define d 4)
	(define e 5)
	(inspect (min5 a b c d e))
	)


(run2)
