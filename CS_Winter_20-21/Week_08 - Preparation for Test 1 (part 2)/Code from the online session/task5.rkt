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

(define (find-closest-words xss)
  (define sorted-distance
    (sort (map (λ (xs) (cons xs (naive-levenshtein (car xs) (cadr xs)))) (combinations xss 2))
     (λ (x y) (< (cdr x) (cdr y)))))
  (map (λ (x) (car x)) (takef sorted-distance (λ (x) (= (cdr x) (cdr (first sorted-distance))))))
  )

(equal? (find-closest-words '((c a t) (k i t t e n) (w r i t t e n) (h a t) (b a t))) '(((c a t) (h a t)) ((c a t) (b a t)) ((h a t) (b a t))))