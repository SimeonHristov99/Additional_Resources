#lang racket

(define (leap-year? n)
  (cond
    [(= (remainder n 400) 0) #t]
    [(= (remainder n 100) 0) #f]
    [(= (remainder n 4) 0) #t]
    [else #f]
    ))

(define (leap-year-one-line? n)
  (or (= (remainder n 400) 0)
      (and (not (= (remainder n 100) 0))
           (= (remainder n 4) 0))
       ))

(display "\nUsing cond\n")
(equal? (leap-year? 2020) #t)
(equal? (leap-year? 1988) #t)
(equal? (leap-year? 1600) #t)
(equal? (leap-year? 2400) #t)
(equal? (leap-year? 2023) #f)
(equal? (leap-year? 1700) #f)
(equal? (leap-year? 1800) #f)
(equal? (leap-year? 2100) #f)

(display "\nUsing boolean logical operators\n")
(equal? (leap-year-one-line? 2020) #t)
(equal? (leap-year-one-line? 1988) #t)
(equal? (leap-year-one-line? 1600) #t)
(equal? (leap-year-one-line? 2400) #t)
(equal? (leap-year-one-line? 2023) #f)
(equal? (leap-year-one-line? 1700) #f)
(equal? (leap-year-one-line? 1800) #f)
(equal? (leap-year-one-line? 2100) #f)