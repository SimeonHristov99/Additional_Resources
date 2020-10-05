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
Define a procedure *remove-duplicates xs* that removes all duplicated elements in a list.

Test case:

    (equal? (remove-duplicates '(1 2 2 3 1 5 6 7 7)) '(1 2 3 5 6 7))

# Task 3
Define a procedure *get-sublist start-idx end-idx xs* that returns the sublist in an index range.

Test case:

    (equal? (get-sublist 2 6 '(1 2 2 3 1 5 6 7 7)) '(2 3 1 5 6))


# Task 4
Define a procedure *countOcccurrences subxs xs* that counts how many times one list (*subxs*) is present in another (*xs*).

Test case:

    (equal? (count-occurrences '(1 5) '(1 5 2 3 1 5 6 7 7 1 5)) 3)
    
# Task 5
Define a procedure *ordered? xs pred* that checks whether a list is sorted in ascending or descending order according to a predicate parameter.

Test case:

    (equal? (ordered? '(1 2 3 5) (λ (x y) (< x y))) #t)
    
# Task 6
Define a procedure *longest-ascending-sub xs* that returns the longest sublist that is sorted in ascending order from xs.

Test cases:

    (equal? (longest-ascending-sub '(1 0 5)) '(0 5))
    (equal? (longest-ascending-sub '(1 5 2 3 1 5 6 7 7 1 5)) '(1 5 6 7 7))
    (equal? (longest-ascending-sub '(1 5 2 3 1 5 2 7 7 15)) '(2 7 7 15))
    (equal? (longest-ascending-sub '(1 5 2 3 4 5 6 7 7 1 5)) '(2 3 4 5 6 7 7))

# Task 7
Define a procedure *flatten xss* that accepts a list of nested lists and returns a list containing only one level with all the elements from all lists.

Test case:

    (equal? (flatten '((1 2 3) (4 5 6) ((7 8) (9 10 (11 (12)))))) '(1 2 3 4 5 6 7 8 9 10 11 12))
    
# Association list
# Task 8
Define a procedure *assoc key xs* that returns the value of a given key from xs.

Test case:

    (equal? (assoc 1 (list '(2 . "Two") '(3 . "Three") '(1 . "One"))) "One")

# Task 9
Define a procedure *replace xs dict* that replaces any of the data in the list *xs* that has corresponding values in the dictionary *dict*.

Test case:

    (equal? (replace '(1 2 3 4) '((1 . 11) (2 . 22))) '(11 22 3 4))