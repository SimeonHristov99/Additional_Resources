#lang racket

(define (insert-at x i xs)
  (append (take xs (- i 1)) (cons x (drop xs (- i 1))))
  )

(equal? (insert-at 0 1 '(10 20 30)) '(0 10 20 30))
(equal? (insert-at 0 2 '(10 20 30)) '(10 0 20 30))
(equal? (insert-at 0 3 '(10 20 30)) '(10 20 0 30))
(equal? (insert-at 0 4 '(10 20 30)) '(10 20 30 0))
(equal? (insert-at 0 1 '()) '(0))

(define (remove-all x xs)
  (filter (λ (y) (not (= x y))) xs)
  )

(remove-all 1 '(1 1 1 2))
(remove-all 1 '(2 5 6))
(remove-all 1 '(1))
(remove-all 1 '(1 2 1 1))

#|
(cdr (cadr '((a (b)) ((c (d)) e))))
> cdr ???
  > (cadr '((a (b)) ((c (d)) e)))
    > (car (cdr '((a (b)) ((c (d)) e))))
      > (cdr '((a (b)) ((c (d)) e))) => '(((c (d)) e))
    > (car '(((c (d)) e))) => ((c (d)) e)
 > (cdr '((c (d)) e)) => '(e)

caddr === car (cdr (cdr xs))
|#

#|
(define (scons a xss)
  (map (λ (xs) (cons a xs)) xss)
)


(scons 1 '((1 2 3) (4 5 6) (7 8 9))) ; => '((1 1 2 3) (1 4 5 6) (1 7 8 9)))
|#

#|
(map length
     (map (λ (x)
            (cond [(not (pair? x)) (list x)]
                  [(null? (cdr x)) x]
                  [else (cdr x)]))
          '((2 3 4) (8 5) 6 (7 1 –1 5) (1))))
|#

; (map length '((1 2 3) (4 5 6) (7 8 9)))
; x = '(2 3 4) => '(3 4) => '(3 4) => 2
; x = '(8 5) => '(5) => 1
; x = 6 => '(6) => 1
