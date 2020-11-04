# Task 1
Subtask 1: Sort the elements in ascending order according to their lenght '("str" "apple" "fruit" "banana")

Subtask 2: Define a procedure that returns the length of a list.

Test cases:

    (= (my-length '()) 0)
    (= (my-length '(1 2 5 6 4 8)) 6)

# Task 2
Define a procedure that checks whether an element is present in the list.

Test cases:
    
    (equal? (elem? 1 '(5 2 1)) #t)
    (equal? (elem? "str" '()) #f)
    (equal? (elem? "str" '("str" "len" "pair")) #t)

# Task 3
Define a procedure that returns the smallest element of a list.

Test cases:

    (= (get-smallest '(1 2 5)) 1)
    (= (get-smallest '(2 1 5)) 1)

# Task 4
Define a procedure that removes the first match of an element.

Test cases:

    (equal? (remove-first 1 '(1 1 1 2)) '(1 1 2))
    (equal? (remove-first 1 '(2 5 6)) '(2 5 6))
    (equal? (remove-first 1 '(1)) '())
    (equal? (remove-first 1 '(2 1)) '(2))

# Task 5
Define a procedure that reverses a list.

    (equal? (my-reverse '(1 2 3 4 5)) '(5 4 3 2 1))

# Task 6
Define a procedure that inserts an element at a current index.

Test cases:

    (equal? (insert-at 1 0 '()) '(1))
    (equal? (insert-at 1 0 '(2)) '(1 2))
    (equal? (insert-at 10 1 '(1 2 3)) '(1 10 2 3))

# Task 7
Define a procedure that concatenates two lists.

    (equal? (concat '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6))

# For home
# Task 1
Define a procedure that removes an element from a list.

Test cases:

    (equal? (remove-all 1 '(1 1 1 2)) '(2))
    (equal? (remove-all 1 '(2 5 6)) '(2 5 6))
    (equal? (remove-all 1 '(1)) '())
    (equal? (remove-all 1 '(1 2 1 1)) '(2))

# Task 2
Define a procedure *longest-ascending-sub xs* that returns the longest sublist that is sorted in ascending order from xs.

Test cases:

    (equal? (longest-ascending-sub '(1 0 5)) '(0 5))
    (equal? (longest-ascending-sub '(1 5 2 3 1 5 6 7 7 1 5)) '(1 5 6 7 7))
    (equal? (longest-ascending-sub '(1 5 2 3 1 5 2 7 7 15)) '(2 7 7 15))
    (equal? (longest-ascending-sub '(1 5 2 3 4 5 6 7 7 1 5)) '(2 3 4 5 6 7 7))
    (equal? (longest-ascending-sub '(1 5 2 4 6 8 3 4 1)) '(2 4 6 8))

# Task 3
Define a procedure *set-union xs ys* that takes two sets of numbers and returns their union. Make sure it (the union) is sorted in ascending order!

Test cases:

    (equal? (set-union '(1 3 5 7) '(5 7 13)) '(1 3 5 7 13))
    (equal? (set-union '(5 7 13) '(1 3 5 7)) '(1 3 5 7 13))