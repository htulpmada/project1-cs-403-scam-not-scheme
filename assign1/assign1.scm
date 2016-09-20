(define (author)
	(println "AUTHOR: Adam Pluth apluth@crimson.ua.edu")
	)

(define (run1)
	(println " for our example we will use (and (< a 5) (=! a 2 )) for our function call to both and & my-and. in the case of (and) the left side argument is evaluated first and the right argument is not evaluated at all bacause there is no way for the entire expression to become true, where as the my-and will evaluate both arguments and the compare them to each other. ")
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
	(inspect (root5 5.89e-12))
)

(define (run5)
	(inspect(bico 5 4 ))
	(inspect(bico 7 2 ))
	(inspect(bico 1 1 ))
	(inspect(bico 0 0 ))
	(inspect(bico 12 7 ))
	(inspect(bico 0 0 ))
	(inspect(bico 10 5 ))
	)

(define (run6)
;	(inspect ((((curry + 1)2)3)4))
	)

(define (run7)
	)

(define (run8)
	(inspect(egypt/ 1960 56))
	(inspect(egypt/ 1000 50))
	(inspect(egypt/ 25000 35))
	(inspect(egypt/ 1920 3))
	(inspect(egypt/ 325248 1.75 ))
	)

(define (run9)
	(inspect(mystery 3 2 (Numer) Denom))
	(inspect(mystery 2 2 (Numer) Denom))
	(inspect(mystery 1 2 (Numer) Denom))
	(inspect(mystery 10 1 (Numer) Denom))
	(inspect(mystery 100 1 (Numer) Denom))
	(inspect(mystery 1000 1 (Numer) Denom))
	(println "the number converges to 1/((e)^.5-1)")
)


(define (run10)
	(inspect(ramanujan 0))
	(inspect(ramanujan 1))
	(inspect(ramanujan 2))
	(inspect(ramanujan 3))
	(inspect(ramanujan 4))
	(inspect(ramanujan 5))
	(inspect(ramanujan 6))
	(inspect(ramanujan 40))
	(inspect(iramanujan 0))
	(inspect(iramanujan 1))
	(inspect(iramanujan 2))
	(inspect(iramanujan 3))
	(inspect(iramanujan 4))
	(inspect(iramanujan 5))
	(inspect(iramanujan 6))
	(inspect(iramanujan 7))
	(inspect(iramanujan 10))
	(inspect(iramanujan 15))
	(inspect(iramanujan 25))
	(inspect(iramanujan 40))
	(inspect(iramanujan 4000))
	(println "task 10 seems to converge to four which is the first perfect square")
)



(define (min5 a b c d e)
	(define (m x y)
		(if(< x y) x y))
	(m a (m b (m c (m d e))))
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
	(define pi 3.14159265358979323846)
	(define px (* x pi))
	(define X (* px .005))
	(define c (cos X))
	(define cval (* c 255))
	(define cval (int cval))
	(define py (* x pi .01))
	(define y (sin py))
	(define Y (- 1  y))
	(define yv (* Y 255))
	(if(<(abs(- yv 255)).001)
		(define yval 255)
		(define yval (int yv)))
	(define pm (+ (* x .01 1.5 pi) (* 1.5 pi)))
	(define m (- 1 (sin pm)))
	(define mval (* m 255 .5))
	(define mval (int mval))
	(define color(string+ "#" (toHex cval) (toHex yval) (toHex mval)))
)

(define (root5 number)
	(define g 1)
	(define (root5.2 number g)
	(define x number)
	(define (square z)
	  (* z z z z z ))
	(define (goodEnough x g)
		(< (abs (- (square g) x)) .000000001))
	(define (guess a n g )
	   (define div (real .2))
	   (define i (* (- n 1) g))
	   (define j (* g g g g))
	   (define j (/ 1 (real j)))
	   (define q (real (* a  j)))
	   (define yk (* div (+ i q)))
	  )
	(if (goodEnough x g)
		g
		(root5.2 x (guess x 5 g))))
	(root5.2 number g)
)

(define (bico i j)
	(cond((< i j)#f)
	((or (= 0 j) (= j i)) 1)
	(else (+ (bico (- i 1) j) (bico (- i 1) (- j 1)))))
)

(define (curry f a)
	    (lambda (b) 
		(lambda (c) 
		  (lambda (d) 
			(f d c b a)
		  )
		)
	)
)

(define (egypt/ num div)
       (define (halfTil a b c d)
        (cond((< 0 a)
          (cond((<= b c )
            (define d(+ a d))
            (define c(- c b))))
          (define a (halve a))
          (define b (halve b))
          (halfTil a b c d))
        (else d))
        )
	(define a 1)
	(define c num)
	(define b div)
	(define (double x) (+ x x))
	(define (dblTil a2 b2 c2)
	 (cond((> b2 c2) (halfTil a2 b2 c2 0))
	  (else (dblTil (double a2) (double b2) c2))
	 )
	)
	(dblTil a b c)
)

(define (double x)  
  (define x2 (+ x x)) 
  x2 
  ) 

(define (double2 x)  
  (define x2 (+ x x)) 
  (cond((= 0 x2)  1) 
  (else x2)) 
  ) 

(define (halve x)
	(define (recurHalf x y ts total)
	  (cond 
	    ((>(double2 x) y)
	    (cond 
	      ((>= 0 (- y x)) (cond ((= 0 total)(+ total ts))
				(else (+ ts total) )
				))
	      (else 
		(recurHalf 1 (- y x) 0 (+ ts total))))
	    )
	  (else 
	    (define ans(recurHalf (double x) y (double2 ts) total))))	
	  )
	(recurHalf 1 x 0 0)
)

(define (Numer)
	(lambda one 1)
)

(define (Denom i)
	(if (not (= 0 (% i 3)))
	1
	(+ 1 (* 4 (/ i 3)))
	)
)

(define (mystery dep aug f1 f2)
	(define (iterMystery i res)
	(if
	  (= i 0) 
	  res
	  (iterMystery(- i 1) (/ (f1 i) (+ (f2 i) res)))))
	(+ aug (iterMystery dep 0.0))
)

(define (zorp i f)
	(define (zhelp a b c n)
	  (if (== n 0) 
	    a
	    (zhelp (+ a (/ (expt (- a b) 2) (+ (- c (* 2 b)) a))) a b (- n 1))
	  )
	)
	(if (< i 3)
	  (f i)
	  (zhelp (f 2) (f 1) (f 0) (- i 2))
	)
)

(define (ramanujan d)
	(define (recurRam k r)
	(cond
	((= k r) (* (+ k 1)(sqrt(+ 6 k))))
	(else (define x (* (+ k 1) (sqrt (+ 6 k (recurRam (+ k 1) r )))))
	))
	)
	(recurRam 0 d)
)

(define (iramanujan d)
	(define (iterRam k t)	
	(cond ((< k 0) t)
	(else 
	(define total (* (+ k 1) (sqrt(+ 6 k t))))
	(define k (- k 1))
	(iterRam k total)
	)))
	(iterRam d 0)
)

(println "assignment 1 loaded!")
