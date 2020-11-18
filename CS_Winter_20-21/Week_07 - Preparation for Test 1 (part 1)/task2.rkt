#lang racket

(require math/number-theory)

(define (sum-digit-divisors n)
  (define (helper left-over)
    (cond
      [(zero? left-over) 0]
      [(< left-over 10) (if (divides? left-over n) left-over 0)]
      [else (if (and (not (zero? (remainder left-over 10)))
                     (divides? (remainder left-over 10) n))
                (+ (remainder left-over 10) (helper (quotient left-over 10)))
                (helper (quotient left-over 10))
                )]
      )
    )
  (if (< n 1)
      (error "n was not natural")
      (helper n)
      )
  )

(define (same-sum a b)
  (define (helper xs)
    (cond
      [(<= (length xs) 1) 0]
      [(= (cdar xs) (cdadr xs)) (+ 1 (helper (drop xs 2)))]
      [else (helper (cdr xs))]
      )
    )
  (helper (sort (map (λ (x) (cons x (sum-digit-divisors x))) (range a (+ b 1))) (λ (x y) (< (cdr x) (cdr y)))))
  )

(= (same-sum 28 35) 2) ; the pairs are (28,32) and (29,34)

#|
Generate the list from a to b: '(28 29 30 31 32 33 34 35)
Make each element a pair containg the element and its "grade" (returned by sum-dig-div): '((28 . 2) (29 . 0) (30 . 3) (31 . 1) (32 . 2) (33 . 6) (34 . 0) (35 . 5))
Order the elements by increasing "grade". '((29 . 0) (34 . 0) (31 . 1) (28 . 2) (32 . 2) (30 . 3) (35 . 5) (33 . 6))
Now, iterate through the elements and if cdr x == cdr x+1 then +1
|#