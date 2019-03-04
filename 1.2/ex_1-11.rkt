#lang sicp

(define (f n)
  (define (f-iter a b c n)
    (if (= n 0)
        a
        (f-iter b c (+ (* 3 a) (+ (* 2 b) c)) (- n 1))
    )
  )
  (f-iter 0 1 2 n)
)

(define (f-rec n)
  (if (< n 3)
      n
      (+ (+ (f-rec (- n 1))
         (* 2 (f-rec (- n 2))))
         (* 3 (f-rec (- n 3)))
      )
  )
)

(write (number->string (f-rec 1)))
(write (number->string (f-rec 3)))
(write (number->string (f-rec 4)))
(write (number->string (f-rec 5)))

(write (number->string (f 1)))
(write (number->string (f 3)))
(write (number->string (f 4)))
(write (number->string (f 5)))
;f(5) 25
;f(4) 11
;f(3) 4
;f(2) 2
;f(1) 1
