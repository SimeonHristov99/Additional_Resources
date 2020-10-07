# Tasks

## Task 1
Some numbers have funny properties. For example:<br/>
&nbsp;&nbsp;89 --> 8¹ + 9² = 89 * 1<br/>
&nbsp;&nbsp;695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2<br/>
&nbsp;&nbsp;46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51<br/>
Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p write a function digpow that finds a positive integer k such that (a^p + b^(p+1) + c^(p+2) + d^(p+3) + ...) = n * k. If such a number does not exist, digpow should return -1.<br/><br/>
Note: n and p will always be given as follows: n > 0 and p > 0.<br/><br/>
Examples:<br/>
&nbsp;&nbsp;digpow 89 1 should return 1 since 8¹ + 9² = 89 = 89 * 1<br/>
&nbsp;&nbsp;digpow 92 1 should return -1 since there is no k such as 9¹ + 2² equals 92 * k<br/>
&nbsp;&nbsp;digpow 695 2 should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2<br/>
&nbsp;&nbsp;digpow 46288 3 should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51<br/>

## Task 2
Write a function nbDig which takes in a non-negative integer n and a digit d and outputs the number of times d is present in the squares of the numbers between 0 and n.<br/>

Examples:<br/>
&nbsp;&nbsp;n = 10, d = 1, the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100<br/>
&nbsp;&nbsp;We are using the digit 1 in 1, 16, 81, 100. The total count is then 4.<br/>

&nbsp;&nbsp;nbDig(25, 1):<br/>
&nbsp;&nbsp;the numbers of interest are<br/>
&nbsp;&nbsp;1, 4, 9, 10, 11, 12, 13, 14, 19, 21 which squared are 1, 16, 81, 100, 121, 144, 169, 196, 361, 441<br/>
&nbsp;&nbsp;so there are 11 digits `1` for the squares of numbers between 0 and 25.<br/>

Note: that 121 has twice the digit 1.<br/>

## Task 3
A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.<br/>

Examples:<br/>
&nbsp;&nbsp;digital_root(16)<br/>
&nbsp;&nbsp;=> 1 + 6<br/>
&nbsp;&nbsp;=> 7<br/>
&nbsp;&nbsp;digital_root(942)<br/>
&nbsp;&nbsp;=> 9 + 4 + 2<br/>
&nbsp;&nbsp;=> 15 ...<br/>
&nbsp;&nbsp;=> 1 + 5<br/>
&nbsp;&nbsp;=> 6<br/>
&nbsp;&nbsp;digital_root(132189)<br/>
&nbsp;&nbsp;=> 1 + 3 + 2 + 1 + 8 + 9<br/>
&nbsp;&nbsp;=> 24 ...<br/>
&nbsp;&nbsp;=> 2 + 4<br/>
&nbsp;&nbsp;=> 6<br/>
&nbsp;&nbsp;digital_root(493193)<br/>
&nbsp;&nbsp;=> 4 + 9 + 3 + 1 + 9 + 3<br/>
&nbsp;&nbsp;=> 29 ...<br/>
&nbsp;&nbsp;=> 2 + 9<br/>
&nbsp;&nbsp;=> 11 ...<br/>
&nbsp;&nbsp;=> 1 + 1<br/>
&nbsp;&nbsp;=> 2<br/>

## Task 4
Given a list of numbers, determine whether the sum of its elements is odd or even. Give your answer as a string matching "odd" or "even". If the input array is empty consider it as: [0] (array with a zero).<br/>

Examples:<br/>
&nbsp;&nbsp;odd_or_even([0])          ==  "even"<br/>
&nbsp;&nbsp;odd_or_even([0, 1, 4])    ==  "odd"<br/>
&nbsp;&nbsp;odd_or_even([0, -1, -5])  ==  "even"<br/>

## Task 5
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.<br/>
Examples<br/>
Valid arrays<br/><br/>

a = [121, 144, 19, 161, 19, 144, 19, 11]  <br/>
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]<br/>

comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:<br/><br/>

a = [121, 144, 19, 161, 19, 144, 19, 11] <br/>
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]<br/>

Invalid arrays<br/>

If we change the first number to something else, comp may not return true anymore:<br/>

a = [121, 144, 19, 161, 19, 144, 19, 11]  <br/>
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]<br/><br/>

comp(a,b) returns false because in b 132 is not the square of any number of a.<br/>

a = [121, 144, 19, 161, 19, 144, 19, 11]  <br/>
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]<br/><br/>

comp(a,b) returns false because in b 36100 is not the square of any number of a.<br/>

## Task 6
Given an array, find the int that appears an odd number of times.

Note: There will always be only one integer that appears an odd number of times.

## Task 7
Да се дефинира функция ​ countDigits​, която намира броя на цифрите на дадено естествено число. Да се напише и итеративно решение.

## Task 8
Да се дефинира функция ​ sumDigits​, която намира сумата на цифрите на дадено естествено число. Да се напише и итеративно решение.

## Task 9
Да се дефинира функция ​ countOccurences n digit​, която връща броят на срещанията на цифрата ​ digit ​ в записа на числото ​ n.

## Task 10
Да се дефинира предикат isAscending​, който проверява дали цифрите на дадено число са записани във възходящ ред.

## Task 11
Да се дефинира предикат isPrime​, който проверява дали дадено естествено число е просто.

## Task 12
Да се дефинира функция isPerfect​, която проверява дали дадено число е равно на сумата от делителите си.

## Task 13
Да се дефинира функция ​ reverseNumber​, която по дадено естествено число n намира числото, записано със същите цифри, но в обратен ред.

## Task 14
Да се дефинира функция ​isPalindrome​, която проверява дали дадено число е палиндром.

## Task 15
Да се дефинира функция, която връщта списък от целите числа между а и b (a <= b).
