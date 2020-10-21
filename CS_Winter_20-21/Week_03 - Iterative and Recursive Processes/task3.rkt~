#lang racket

(define (substr? x y)
  (define (helper left-over-x left-over-y)
    (cond
      [(> left-over-x left-over-y) #f]
      [(< left-over-y 10) (= left-over-x left-over-y)]
      [(= (remainder left-over-x 10) (remainder left-over-y 10)) (if (< left-over-x 10)
                                                                     #t
                                                                     (helper (quotient left-over-x 10) (quotient left-over-y 10))
                                                                     )]
      [else (helper x (quotient left-over-y 10))]
      )
    )
  (if (or (< x 0) (< y 0))
      (error "x or y was negative")
      (helper x y)
      )
  )

(equal? (substr? 123 5123783) #t)
(equal? (substr? 0 0) #t)
(equal? (substr? 10 101) #t)
(equal? (substr? 101 101) #t)
(equal? (substr? 10 0) #f)
(equal? (substr? 1253 5123783) #f)
(equal? (substr? 12 0) #f)