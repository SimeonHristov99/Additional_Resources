# Task 1
Define a procedure that returns the length of a list.

Test cases:

    (equal? (my-length '()) 0)
    (equal? (my-length '(1 2 5 6 4 8)) 6)

# Task 2
Define a procedure that checks whether an element is present in the list.

Test cases:
    
    (equal? (elem? 1 '(1 2 5)) #t)
    (equal? (elem? "str" '()) #f)
    (equal? (elem? "str" '("str" "len" "pair")) #t)

# Task 3
Define a procedure that inserts an element at a current index.

Test cases:

    (insert-at 1 0 '())
    (insert-at 1 0 '(2))
    (insert-at 10 1 '(1 2 3))
    (insert-at 1 1 '()) => error

# Task 4
Define a procedure that returns the smallest element of a list.

Test cases:

    (equal? (get-smallest '(1 2 5)) 1)
    (equal? (get-smallest '(2 1 5)) 1)
    (equal? (get-smallest '()) 1)

# Task 5
Define a procedure that removes the first match of an element.

Test cases:

    (remove-first 1 '(1 1 1 2))
    (remove-first 1 '(2 5 6))
    (remove-first 1 '(1))
    (remove-first 1 '(2 1))

# Task 6
Define a procedure that removes an element from a list.

Test cases:

    (remove-all 1 '(1 1 1 2))
    (remove-all 1 '(2 5 6))
    (remove-all 1 '(1))
    (remove-all 1 '(1 2 1 1))

# Task 7
Define a procedure that concatenates two lists.

# Task 8
Define a procedure that reverses a list.