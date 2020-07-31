#lang racket

(define (myFib n)
  (if (< n 2) 1 (+ (myFib (- n 1)) (myFib (- n 2)))))

(define (helper n result prev)
  (if (< n 2)
      result
      (helper (- n 1) (+ result prev) result)))

(define (myFibIter n)
  (helper n 1 1))