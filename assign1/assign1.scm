(define (author)
	(println "AUTHOR: Adam Pluth apluth@crimson.ua.edu")
	)

(define (run1)
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
	(define f 0)
	(define g 25)
	(define h 50)
	(define i 75)
	(define j 100)
	(inspect(cym f ))
	(inspect(cym g ))
	(inspect(cym h ))
	(inspect(cym i ))
	(inspect(cym j ))
	)

(define (run4)
	(inspect (root5 31251 5))
	(inspect (root5 25 5))
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
	(define (toHex n)
	    (define rem (% n 16))
	    (define hexList (list (string 0) (string 1) (string 2) (string 3) (string 4) (string 5) (string 6) (string 7) (string 8) (string 9) "A" "B" "C" "D" "E" "F"))
		(cond 
		  ((< n 17) (string+ "0" (getElement hexList n)))
		(else (string+ (getElement hexList (/ n 16)) (getElement hexList (% n 16))))
		)
	    )
	(define hexList (list (string 0) (string 1) (string 2) (string 3) (string 4) (string 5) (string 6) (string 7) (string 8) (string 9) "A" "B" "C" "D" "E" "F"))
;	(inspect hexList)
	(define pi 3.14159265358979323846)
	(define px (* x pi))
	(define X (* px .005))
	(define c (cos X))
	(define cval (* c 255))
	(define cval (int cval))
 	(inspect cval)
;	(inspect(toHex cval))
	(define py (* x pi .01))
	(define y (sin py))
	(define Y (- 1  y))
	(define yv (* Y 255))
	(define yval (int yv))
;254 should be 255
 	(inspect yval)
	(define pm (+ (* x .01 1.5 pi) (* 1.5 pi)))
	(define m (- 1 (sin pm)))
	(define mval (* m 255 .5))
	(define mval (int mval))
 	(inspect mval)
	(define color(string+ "#" (toHex cval) (toHex yval) (toHex mval)))
;	(color)
)

(define (root5 number  g)
	(inspect "start")
	(define x number)
	(inspect x)
; helper functions
	(define (sq q) (* q q))
	(define (cu c) (* c c c))
	(define (frth f) (* f f f f))
	(define (fifth fi) (* fi fi fi fi fi))

;square root
	(define quo1 (/ x g) )
	(inspect quo1)
	(define	func1 (+ g quo1 ))
	(inspect func1)
	(define funcsq (* g g))
	(define g1 (* .5 func1))
(inspect g1)
;cube root
	(define quo2 (/ x g1))
	(define func2 (* (+ (* g1 2 ) quo2) .33333333 ))
	(define g2 (cu func2))
(inspect g2)
;fourth root
	(define quo3 (/ x g2))
	(define func3 (+ quo3 (* 3 g2)))
	(define g3 (frth (* .25 func3)))
(inspect g3)
;fifth root
	(define quo4 (/ x g3))
	(define func4 (+ (* g3 4) quo4))
	(define ans (* .2 func4 ))
(inspect ans)

)



(run2)
(run3)
(run4)
