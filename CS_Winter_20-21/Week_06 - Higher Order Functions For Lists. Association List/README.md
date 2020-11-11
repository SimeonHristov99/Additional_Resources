# Task 1
Rewrite the following procedures from last session using higher order procedures:

 -  insert-at

        Test cases:

            (equal? (insert-at 0 1 '(10 20 30)) '(0 10 20 30))
            (equal? (insert-at 0 2 '(10 20 30)) '(10 0 20 30))
            (equal? (insert-at 0 3 '(10 20 30)) '(10 20 0 30))
            (equal? (insert-at 0 4 '(10 20 30)) '(10 20 30 0))
            (equal? (insert-at 0 1 '()) '(0))

 - remove-all

        Test cases:

            (remove-all 1 '(1 1 1 2))
            (remove-all 1 '(2 5 6))
            (remove-all 1 '(1))
            (remove-all 1 '(1 2 1 1))

# Task 2
Define a procedure *assoc key xs* that returns the value of a given key from xs.

Test case:

    (equal? (assoc 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")

# Task 3
Define a procedure *replace xs dict* that replaces any of the data in the list *xs* that has corresponding values in the dictionary *dict*.

Test case:

    (equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))

# Task 4
Define a procedure *get-sublist start-idx end-idx xs* that returns the sublist in anindex range.

Test case:

    (equal? (get-sublist 2 6 '(1 2 2 3 1 5 6 7 7)) '(2 3 1 5 6))

# Task 5
Define a procedure that counts how many times one list (*subxs*) is present in another (*xs*).

Test case:

    (= (count-occurrences '(1 5) '(1 5 2 3 1 5 6 7 7 1 5)) 3)
    
# Task 6
Define a procedure that checks whether a list is sorted in ascending or descending order according to a predicate parameter.

Test case:

    (equal? (ordered? '(1 2 3 5) (λ (x y) (< x y))) #t)

# Task 7
Define a procedure that accepts a list of nested lists and returns a list containing only one level with all the elements from all lists.

Test case:

    (equal? (my-flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))

# For home
# Task 1
Define a procedure that accepts a list of numbers and a list of predicates and returns only the elements that satisfy all of the predicates.

Test cases:

    (equal? (where '(3 4 5 6 7 8 9 10) (list even? (lambda (x) (> x 5)))) '(6 8 10)) ; (all even numbers greater than 5)
    (equal? (where '(3 4 5 7) (list even? (lambda (x) (> x 5)))) '()) ; (no numbers are even and greater than 5)

# Task 2
Define a procedure that takes a list of numbers and returns a list of nested lists in the form (x<sub>i</sub> n<sub>i</sub>) where *x<sub>i</sub>* spans the elements of *xs* and *n<sub>i</sub>* is the number of elements in *xs* that are greater than *x<sub>i</sub>*.

Test cases:

    (equal? (num-bigger-elements '(5 6 3 4)) '((5 1) (6 0) (3 3) (4 2)))
    (equal? (num-bigger-elements '(1 1 1)) '((1 0) (1 0) (1 0)))