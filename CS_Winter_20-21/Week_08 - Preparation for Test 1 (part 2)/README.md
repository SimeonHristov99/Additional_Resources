# Task 1
Define a procedure that modifies a matrix as follows:
 - if a column has a zero then the whole column in the resulting matrix should contain only zeros.

Test case:

    (equal? (zero-cols '((1 2 0) (3 4 1) (0 5 7) (4 2 4)) '((0 2 0) (0 4 0) (0 5 0) (0 2 0))))

# Task 2
Define a procedure that accepts a list of metrics - *ms* and a list of lists of numbers - *xss* and checks whether there exists a metric *m* in *ms* such that:
 - *m* returns a higher value for every list in *xss* than any other metric.

Test cases:

    (define (prod xs) (apply * xs))
    (define (sum xs) (apply + xs))
    (equal? (best-metric? (list sum prod) `((1337 0) (3 -4 5) (0 1 2))) #t)
    (equal? (best-metric? (list car sum) `((100 -100) (29 1) (42))) #f)

Note:

    Metric := procedure that maps a list to a number.

# Task 3
Define a procedure *tabulate* that accepts a procedure - *f* and returns a binary function of the whole numbers *a* and *b*. The result of *((tabulate f) a b)* should be a list of pairs in the form *( i . f(i) )* where *i* spans the interval *[a, b]*.

Test case:

    (equal? ((tabulate (λ (x) (* x x))) 1 5) '((1 . 1) (2 . 4) (3 . 9) (4 . 16) (5 . 25)))

# Task 4
Levenshtein distance is a way to calculate how different two words *a* and *b* are from one another. It works by calculating the minimum number of characters that have to be replaced, inserted or deleted in *a* in order to get *b*.

Let *i* be the length of *a* and *j* be the length of *b*. Then we can calculate *lev<sub>a, b</sub>(i, j)* by using the following formula:

![Alt text](lev_formula.png?raw=true "lev_formula")

where:
![Alt text](cond1.png?raw=true "cond1")

and

![Alt text](cond2.png?raw=true "cond2")

Define a procedure that returns the levenshtein distance between two words, represented as lists of characters.

Test cases:

    (= (naive-levenshtein '(c a t) '(d o g)) 3)
    (= (naive-levenshtein '(c a t) '(h a t)) 1)
    (= (naive-levenshtein '(k i t t e n) '(w r i t t e n)) 2)

# Task 5
Define a procedure that accepts a list of words and returns a list of the words with minimal levenshtein distance.

Test case:

    (equal? (find-closest-words '((c a t) (k i t t e n) (w r i t t e n) (h a t) (b a t))) '(((c a t) (h a t)) ((c a t) (b a t)) ((h a t) (b a t))))

# For home
Define a procedure that accepts a matrix and returns the elements on its main diagonal.

Test case:

    (equal? (diagonal '((1 2 3 4) (5 6 7 8) (9 10 11 12) (13 14 15 16))) '(1 6 11 16))
