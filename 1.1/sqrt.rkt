#lang sicp

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2)
)

(define (good-enough? guess x)
    (> 0.001
       (abs (- (square guess) x)))
)

(define (square x)
    (* x x)
)

(write (number->string (sqrt 4)))
