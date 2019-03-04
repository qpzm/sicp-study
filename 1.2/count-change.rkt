#lang sicp

(define (count-change amount)
  (define (cc kinds-of-coins amount)
    (define denomination (first-denomination kinds-of-coins))
    (cond ((> 0 amount) 0)
          ;((= 0 amount) 1) ; Without this, it works but do some redundants
          ((= 1 kinds-of-coins) 1)
          (else (+ (cc (- kinds-of-coins 1) amount)
             (cc kinds-of-coins (- amount denomination))))))
  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))
  (cc 5 amount))

(write (number->string (count-change 10)))
(write (number->string (count-change 100)))
