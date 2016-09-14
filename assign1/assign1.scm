(define (author)
	(println "AUTHOR: Adam Pluth apluth@crimson.ua.edu")
	)

(define (run1)
	(println " for our example we will use (and (< a 5) (=! a 2 )) for our function call to both and & my-and. in the case of (and) the left side argument is evaluated first and the right argument is not evaluated at all bacause there is no way for the entire expression to become true, where as the my-and will evaluate both arguments and the compare them to each other. ")
	)


(define (run4)
	)


(define (run5)
	(inspect(bico 5 4 ))
	(inspect(bico 7 2 ))
	)


(define (run6)
	)

(define (run7)
	)

(define (run8)
	)

(define (run9)
	)

(define (run2)
        (inspect (min5 1 2 3 4 5))
	(inspect (min5 5 4 3 2 1))
	(inspect (min5 0 0 0 0 0))
	(inspect (min5 0 0 1 0 0))
	(inspect (min5 5 1 3 2 4))
	(inspect (min5 100 -20 -20.000000000000000001 5 -100000000000000000))
	(inspect (min5 5 -5 5 -5 5))
	)


(define (run3)
	(inspect(cym 0 ))
	(inspect(cym 10 ))
	(inspect(cym 20 ))
	(inspect(cym 30 ))
	(inspect(cym 40 ))
	(inspect(cym 50 ))
	(inspect(cym 60 ))
	(inspect(cym 70 ))
	(inspect(cym 80 ))
	(inspect(cym 90 ))
	(inspect(cym 100 ))
	)

(define (run4)
	(inspect (root5 1000000))
	(inspect (root5 7))
	(inspect (root5 .0006))
	(inspect (root5 589e-12))
)


(define (min5 a b c d e)
	(define (min2 x y)
		(cond 
			((< x y) x)
			(else y)
			)
		)
	(min2 a (min2 b (min2 c (min2 d e))))
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
; 	(inspect cval)
;	(inspect(toHex cval))
	(define py (* x pi .01))
	(define y (sin py))
	(define Y (- 1  y))
	(define yv (* Y 255))
 ;	(inspect yv)
	(if(<(abs(- yv 255)).001)
		(define yval 255)
		(define yval (int yv)))
; 	(inspect yval)
	(define pm (+ (* x .01 1.5 pi) (* 1.5 pi)))
	(define m (- 1 (sin pm)))
	(define mval (* m 255 .5))
	(define mval (int mval))
 ;	(inspect mval)
	(define color(string+ "#" (toHex cval) (toHex yval) (toHex mval)))
;	(color)
)

(define (root5 number);sqrt-iter from book
;	(inspect "start")
	(define g 1)
	(define (root5.2 number g)
	(define x number)
;	(inspect x)

	(define (square z)
	  (* z z z z z ))
	(define (goodEnough x g)
		(< (abs (- (square g) x)) .0000001))
	(define (guess a n g )
	   (define div (real .2))
;	   (inspect div)
	   (define i (* (- n 1) g))
;	   (inspect i)
	   (define j (* g g g g))
;	   (inspect j)
	   (define j (/ 1 (real j)))
;	   (inspect j)
	   (define q (real (* a  j)))
;	   (inspect q)
	   (define yk (* div (+ i q)))
;    	   (inspect yk)
	  )
	
	(if (goodEnough x g)
		g
		(root5.2 x (guess x 5 g))))
	(root5.2 number g)

)

(define (bico i j)
	(define (factorial n)
            (define (iter store src)
                (cond
                    ((= src 1) store)
                    (else(iter(* store src)(- src 1)))
                    )
                )
        (iter 1 n)
        )
	(/ (factorial i) (* (factorial j) (factorial(- i j))))
)







;(run1)
;(run2)
;(run3)
;(run4)
;(run5)
