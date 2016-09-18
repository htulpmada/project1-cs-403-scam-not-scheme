(include "assign1.scm")

(println "Test Script: VERSION 3\n")

(println "author...\n")
(author)

(print "PROBLEM 1:")
(if (defined? 'run1 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run1)
        (println "\n-------my tests---------------------\n")
        (println "    No testing for this task")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 2:")
(if (defined? 'run2 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run2)
        (println "\n-------my tests---------------------\n")
        (inspect (min5 1 2 3 4 5))
        (println "    [it should be 1]")
        (println "\n------testing for the existence of file min5 -----------\n")
        (include "min5")
        )
    (println " NOT IMPLEMENTED")
    )
(println)
    
(print "PROBLEM 3:")
(if (defined? 'run3 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run3)
        (println "\n-------my tests---------------------\n")
        (inspect (cym 0))
        (println "    [it should be #FFFFFF]")
        (inspect (string? (cym 0)))
        (println "    [it should be #t]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 4:")
(if (defined? 'run4 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run4)
        (println "\n-------my tests---------------------\n")
        (inspect (root5 1))
        (println "    [it should be 1 or really close to 1]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)


(print "PROBLEM 5:")
(if (defined? 'run5 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run5)
        (println "\n-------my tests---------------------\n")
        (inspect (bico 4 2))
        (println "    [it should be 6]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 6:")
(if (defined? 'run6 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run6)
        (println "\n-------my tests---------------------\n")
        (inspect ((((curry (lambda (w x y z) (+ w x y z)) 1) 1) 1) 1))
        (println "    [it should be 4]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 7:")
(if (defined? 'run7 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run7)
        (println "\n-------my tests---------------------\n")
        (inspect (zorp 1 (lambda (x) (* x x))))
        (println "    [it should be 1]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 8:")
(if (defined? 'run8 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run8)
        (println "\n-------my tests---------------------\n")
        (inspect (double 1))
        (println "    [it should be 2]")
        (inspect (halve 2))
        (println "    [it should be 1]")
        (inspect (egypt/ 1 1))
        (println "    [it should be 1]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 9:")
(if (defined? 'run9 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run9)
        (println "\n-------my tests---------------------\n")
        (inspect (mystery 1 2 (lambda (x) 1) (lambda (x) 1)))
        (println "    [it should be 3.000000]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(print "PROBLEM 10:")
(if (defined? 'run10 this)
    (begin
        (println "\n\n------your tests--------------------\n")
        (run10)
        (println "\n-------my tests---------------------\n")
        (inspect (ramanujan 0))
        (println "    [it should be " (^ 6 0.5) "]")
        )
    (println " NOT IMPLEMENTED")
    )
(println)

(author)
