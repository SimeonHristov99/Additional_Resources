main :: IO()
main = do
    print $ isNull [] == True
    print $ isNull [1 .. 5] == False
    print $ isNull ['a', 'b'] == False
    print $ isNull [1.75 .. ] == False
    
    print $ firstEl [1] == 1
    print $ firstEl [10, 5, 6] == 10
    print $ firstEl ["I am", "You are"] == "I am"

    print $ removeFirst [5, 2, 3] == [2, 3]
    print $ removeFirst ["OOpps"] == []

    print $ formList 5 [1, 2, 3, 4, 5, 6] == [6]
    print $ formList 5 ["A", "B", "C"] == []

    print $ concatenate [1, 2, 3] [5, 8, 9] == [1, 2, 3, 5, 8, 9]
    print $ concatenate [1] [5, 8, 9] == [1, 5, 8, 9]
    print $ concatenate ['1', '2', '3'] ['5'] == "1235"

    print $ join [[1, 2], [5, 6], [9]] == [1, 2, 5, 6, 9]
    print $ join [['H'], ['a', 's'], "kell"] == "Haskell"

    print $ joinXs [[1, 2], [5, 6], [9]] == [1, 2, 5, 6, 9]
    print $ joinXs [['H'], ['a', 's'], "kell"] == "Haskell"

isNull :: [a] -> Bool -- By using "a" the function will work with every type.
isNull [] = True
isNull _ = False    -- "_" is the wildcard symbol. Use it when you don't
                    -- care about the value of an argument.

firstEl :: [a] -> a
firstEl [] = error "Empty list!"
firstEl (x:xs) = x

removeFirst :: [a] -> [a]
removeFirst [] = error "Empty list!"
removeFirst (x:xs) = xs

formList :: Int -> [a] -> [a]
formList _ [] =  []
formList 1 (a:as) = as
formList n (a:as) = formList (n - 1) as

concatenate :: [a] -> [a] -> [a]
concatenate [] ys = ys
concatenate xs [] = xs
concatenate (x:xs) ys = x : concatenate xs ys

join :: [[a]] -> [a]
join [] = []
join (x:xs) = x ++ join xs

joinXs :: [[a]] -> [a]
joinXs xs = foldr1 (++) xs