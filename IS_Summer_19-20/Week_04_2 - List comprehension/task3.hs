main :: IO()
main = do
    print $ firstEl [1] -- 1
    print $ firstEl [10, 5, 6] -- 10
    print $ firstEl ["I am", "You are"] -- "I am"
    return ()

firstEl :: [a] -> a
firstEl [] = error "List is empty!"
firstEl lst = head lst -- Alternatively: firstEl (a:as) = a