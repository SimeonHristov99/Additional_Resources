#lang racket

(define (naive-levenshtein xs ys)
  (define (helper i j)
    (if (zero? (min i j))
        (max i j)
        (min (+ (helper (- i 1) j) 1)
             (+ (helper i (- j 1)) 1)
             (+ (helper (- i 1) (- j 1))
                (if (equal? (list-ref xs (- i 1)) (list-ref ys (- j 1)))
                    0
                    1
                    )
                )
             )
        )
    )
  (helper (length xs) (length ys))
  )

(= (naive-levenshtein '(c a t) '(d o g)) 3)
(= (naive-levenshtein '(c a t) '(h a t)) 1)
(= (naive-levenshtein '(k i t t e n) '(w r i t t e n)) 2)