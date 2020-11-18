# Task 1
Define a procedure that finds the sum of the digits of a given natural number that are its divisors.

Test cases:

    (= (sum-digit-divisors 1) 1)
    (= (sum-digit-divisors 28) 2)
    (= (sum-digit-divisors 32) 2)
    (= (sum-digit-divisors 29) 0)
    (= (sum-digit-divisors 34) 0)
    (= (sum-digit-divisors 1048) 13)

# Task 2
Define a procedure that given a binary function *f* and two whole numbers - *a* and *b* finds the number of pairs *(m, n) (a <= m < n <= b)* such that *sum-digit-divisors* returns the same number for both *m* and *n*.

Test case:

    (= (same-sum 28 35) 2) ; the pairs are (28,32) and (29,34)
    
# Task 3
Define a procedure that removes all atoms that are smaller than their depth.

Test case:

    (equal? (deep-delete '(1 (2 (2 4) 1) 0 (3 (1)))) '(1 (2 (4)) (3 ())))

Note: The depth of an atom *x* in a list *xs* is the number of times *car* must be applied to *xs* in order to reach *x*. In the test case we can reach 1, by appling *car* one time and 2 can be reached if with *caadr*.

# Task 4
Define a procedure that accepts a list of pairs and an unary function f and returns whether all points are part of the graph of the function.

Test cases:

    (equal? (graph-contains-points '((1 . 2) (2 . 3) (3 . 4)) (λ (x) (+ x 1))) #t)
    (equal? (graph-contains-points '((1 . 2) (2 . 4) (3 . 4)) (λ (x) (+ x 1))) #f)

# Task 5
Define two procedures that modify a matrix as follows:
 - if a row has a zero then the whole row in the resulting matrix should contain only zeros
 - if a column has a zero then the whole column in the resulting matrix should contain only zeros

Test case:

    (equal? (zero-rows '((1 2 0) (3 4 1) (0 5 7) (4 2 4))) '((0 0 0) (3 4 1) (0 0 0) (4 2 4)))
    (equal? (zero-cols '((1 2 0) (3 4 1) (0 5 7) (4 2 4)) '((0 2 0) (0 4 0) (0 5 0) (0 2 0))))
    
# For home
# Task 1
Define a predicate that takes two non-empty lists of list of numbers. If *xss = '(xs<sub>1</sub> .. xs<sub>n</sub>)* and *yss = '(ys<sub>1</sub> .. ys<sub>n</sub>)* the procedure should return whether all pairs of elements (xs<sub>i</sub>, ys<sub>i</sub>) have equal lengths.

Test cases:

    (equal? (haveMatchingLengths '((1 2 3) (4 5 6) (7 8 9)) '((1 4 7) (2 5 8) (3 6 9))) #t)
    (equal? (haveMatchingLengths '((1 2)) '((1 4 7) (2 5 8))) #f)

# Task 2
Define a procedure that accepts a natural number *n* and returns an unary function of *k* which returns a list of the numbers between 1 and n (inclusive) such that no number contains k or more prime divisors.

Test cases:

    (equal? ((numbers 10) 1) '(1 2 3 5 7))
    (equal? ((numbers 20) 2) '(1 2 3 4 5 7 8 9 11 13 16 17 19))