# Tasks

# Task 1
Define a function that for a real number x and a list containing lists of real numbers returns those numbers whose average is lower than x. Solve the task with one line of code.

Examples:

    myFilter 10  [[1,2,3],[100,200],[10]] -> [[1.0,2.0,3.0]]
    
# Task 2
Run-length encoding is a way of compressing a string. Here's how it works: Every character sequence (with length at least 3) is represented by the number of times the character is in that sequence and the character itself. Define two functions: one that encodes the string and another that decodes it.

Examples:

    encode "Haskell" -> "Haskell"
    encode "aaabccdefff" -> "3abccde3f"
    encode "aaaaaaaaaaaabbb" -> "12a3b"
    decode "12a3b" -> "aaaaaaaaaaaabbb"

# Task 3
Define a function normalize that formats a string following the rules:

 - all lower-case letters become their upper-case eqivalent;
 - if there is a number, the program should abort;
 - all other symbols are ignored.

Examples: 

    normalize "Attack London tomorrow at ten a.m." -> "ATTACKLONDONTOMORROWATTENAM"

# Task 4
Define a function encode that takes an alphabet (string), a character "c" from that string and a natural number "n", describing the offset= The function returns the character that results from shifting "c" "n" times.

Examples: 

    encode ['A'..'Z'] 'A' 1 -> 'B'
    encode ['A', 'C' ..'F'] 'A' (-2) -> 'C'
    encode ['A'..'Z'] 'C' 2 -> 'E'
    encode ['A'..'Z'] 'Z' 3 -> 'C'
    encode ['A'..'Z'] 'A' (-1) -> 'Z'
    encode ['A'..'Z'] 'C' (-2) -> 'A'
    encode ['A'..'Z'] 'Z' (-3) -> 'W'
    encode ['A'..'Z'] '@' 1 -> error “unsupported symbol: @”

# Task 5
By using the solution to task 4, define a function "encrypt" that takes an alphabet (string), an offset and a normalized string and returns the second string where every character is encrypted.

Example:

    encrypt ['A'..'Z'] 5 "ATTACKLONDONTOMORROWATTENAM" -> "FYYFHPQTSITSYTRTWWTBFYYJSFR"

# Task 6
By using the solutions to task 4, define a function decrypt that reverses the encryption process.

Example:

    decrypt ['A'..'Z'] 5 "FYYFHPQTSITSYTRTWWTBFYYJSFR" -> "ATTACKLONDONTOMORROWATTENAM"

# Task 7
A product has a name, quantity (in grams/milliliters) and a price. A shop has products, thus we can use it as a database. Your task is to create that database, insert the values below in it, and print the result.
Available products at the shop:

 - Bread: 1kg for 1.20;
 - Milk: 2L for 4.50;
 - Lamb: 5kg for 10.00;
 - Cheese: 750g for 5.00;
 - Butter: 1kg for 5.50;
 - Water: 500ml for 0.50;
 - Soap: 250g for 4.50.

## By using the solution to task 7 complete the tasks below.

# Task 8
Define a function that returns the price of the inventory.

Test case:

    getTotal db -> 31.2

# Task 9
Define a functon that returns the average price of the products. Solve the task with one line of code.

Test case:

    getAverage -> 4.457142857142857