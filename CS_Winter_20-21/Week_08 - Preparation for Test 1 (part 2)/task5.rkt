#lang racket

(define (naive-levenshtein xs ys)
  (define (helper i j)
    (if (zero? (min i j))
        (max i j)
        (min (+ (helper (- i 1) j) 1)
             (+ (helper i (- j 1)) 1)
             (+ (helper (- i 1) (- j 1)) (if (equal? (list-ref xs (- i 1)) (list-ref ys (- j 1))) 0 1))
             )
        )
    )
  (helper (length xs) (length ys))
  )

(define (find-closest-words xss)
  (define sorted-distance
    (sort (map (λ (xs) (cons xs (naive-levenshtein (car xs) (cadr xs)))) (combinations xss 2))
        (λ (x y) (< (cdr x) (cdr y)))
        )
    )
  (map (λ (pair) (car pair)) (takef sorted-distance (λ (x) (= (cdr x) (cdr (first sorted-distance))))))
  )

(equal? (find-closest-words '((c a t) (k i t t e n) (w r i t t e n) (h a t) (b a t))) '(((c a t) (h a t)) ((c a t) (b a t)) ((h a t) (b a t))))

#|Algorithm:
(combinations xss 2) => Form all combinations.
(map (λ (xs) (cons xs (naive-levenshtein (car xs) (cdr xs)))) (combinations xss 2)) => Add the difference
sort them according to difference
Using takef form a list of the pairs with the minimum distance. ((takef sorted-distance (λ (x) (= (cdr x) (cdr (first sorted-distance))))))
Now, remove the distance and return a list of lists.
|#