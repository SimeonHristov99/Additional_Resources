#lang racket

(define (inside? x a b)
  (and (>= x a) (<= x b)))