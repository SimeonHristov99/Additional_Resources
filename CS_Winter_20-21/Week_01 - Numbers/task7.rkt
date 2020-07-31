#lang racket

(define (myFact n)
  (if (< n 3) n (* n (myFact (- n 1)))))

(define (myFactIter n)
  (helper n 1))

(define (helper n result)
  (if (< n 2) result (helper (- n 1) (* result n))))