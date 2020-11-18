#lang racket

(define (graph-contains-points xss f)
  (cond
    [(null? xss) #t]
    [(= (f (caar xss)) (cdar xss)) (graph-contains-points (cdr xss) f)]
    [else #f]
    )
  )

(equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) (λ (x) (+ x 1))) #t)
(equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) (λ (x) (+ x 1))) #f)

#|
- What is the name of the procedure? graph-contains-points
- How many arguments does it take? Label them. xss f
- What is the domain of the attributes? all
- What is the simplest case?
- What is an extreme case?
- What case would return an error? no
- Can we write down the steps to solve it?

Is there an element?
  no -> #t
  yes -> take the first coordinate. Supply to the lambda. second coord == result from lambda?
                                     yes -> continue with cdr xss
                                     no -> return #f
|#