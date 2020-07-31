main :: IO()
main = do
        print "Please uncomment the function you wish yo run!"
        --print (mymin 5 6)
        --print (mymin 16 15)
        --print (inside 5 5 10)
        --print (inside 100 1 102)
        --print (inside 50 1 10)
        --print (sumSquares 5 10)
        --print (sumSquares_doubles 5.5 10.2)
        --print (average 10 20)
        --print (average_doubles 10.5 20.8)
        --print (calcAverage 5 10) -- Notice how this prints 62 (not 62.5)
        --print (calcAverage_doubles 5 10)
        --print (fibRec 6)
        --print (fibRec 50) -- Using recursion, however, we cannot calculate so many value. Hence, now, we will mimick a loop! (Btw, if you go into a recursion, to stop the program, use Cntr + C from the keyboard).
        --print (fibIter 6)
        --print (fibIter 50) -- Hurray! Now, we can calculate it!
        --print (myFact 5)
        --print (myFactIter 5)
        --print (myGcd 10 5)
        --print (myGcd 116 1236) -- should be 4
        return ()

{- "Integer" is an arbitrary precision type: it will hold any number no matter how big, up to the limit of your machine's
memory, hence no arithmetic overflows. The same relationship (Int -> Integer) is present in Double -> Rational. -}
mymin :: Integer -> Integer -> Integer -- can also be "Int".
mymin a b = if a < b then a else b

inside :: Integer -> Integer -> Integer -> Bool
inside x a b = x >= a && x <= b

{-
There are actually two main exponentiation operators: (^), (**).
^ is non-negative integral exponentiation, and
** is floating-point exponentiation
-}
sumSquares :: Integer -> Integer -> Integer
sumSquares a b = a^2 + b^2

sumSquares_doubles :: Double -> Double -> Double
sumSquares_doubles a b = a**2 + b**2

average :: Integer -> Integer -> Integer
average a b = div (a + b) 2

average_doubles :: Double -> Double -> Double
average_doubles a b = (a + b) / 2 -- Cannot use "div" here!

{- The prefix function "div" accepts only Int || Integer and returns Int || Integer.-}
calcAverage :: Integer -> Integer -> Integer
calcAverage a b = div (a^2 + b^2) 2 -- alternative: (a^2 + b^2) `div` 2

calcAverage_doubles :: Integer -> Integer -> Double
calcAverage_doubles a b = ((fromIntegral(a))^2 + (fromIntegral(b))^2) / 2  -- The "fromIntegral" function converts an Integer or Int to a read number (Double, Rational).

{- We have the sequence 0, 1, 1, 2, 3, 5, 8 .. and the first number has the index of 0! So for n = 6 the result should be 8.-}
fibRec :: Integer -> Integer 
fibRec 0 = 0 -- Pattern matching!! More on that here: http://learnyouahaskell.com/syntax-in-functions
fibRec 1 = 1
fibRec n = fibRec (n - 1) + fibRec (n - 2)

fibIter :: Integer -> Integer
fibIter n = helper 0 1 n
 where -- The "where" clause. More on that here: http://learnyouahaskell.com/syntax-in-functions
         helper :: Integer -> Integer -> Integer -> Integer
         helper n1 n2 0 = n1
         helper n1 n2 n = helper n2 (n1 + n2) (n - 1)

myFact :: Integer -> Integer
myFact n = if n < 2 then 1 else n * myFact (n - 1)

myFactIter :: Integer -> Integer
myFactIter n = helper n 1
 where
         helper :: Integer -> Integer -> Integer
         helper n product = if n < 2 then product else helper (n - 1) (product * n)

{- Let's recap:
The Euclidean Algorithm for finding GCD(A,B) is as follows:
    If A = 0 then GCD(A,B)=B, since the GCD(0,B)=B, and we can stop.  
    If B = 0 then GCD(A,B)=A, since the GCD(A,0)=A, and we can stop.  
    Write A in quotient remainder form (A = B⋅Q + R)
    Find GCD(B,R) using the Euclidean Algorithm since GCD(A,B) = GCD(B,R)
-}
myGcd :: Integer -> Integer -> Integer
myGcd a b
 | a == 0 = b -- Introducing "guards". More on that here: http://learnyouahaskell.com/syntax-in-functions
 | b == 0 = a
 | otherwise = myGcd b (mod a b)