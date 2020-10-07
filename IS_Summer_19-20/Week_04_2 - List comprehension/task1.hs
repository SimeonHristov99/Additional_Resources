main :: IO()
main = do
    print $ checkLst [] -- True
    print $ checkLst [1 .. 5] -- False
    print $ checkLst ['a', 'b'] -- False
    print $ checkLst [1 .. ] -- False

    return ()

checkLst :: [a] -> Bool -- By using "a" the function will work with every type.
checkLst [] = True
checkLst _ = False -- "_" is the wildcard symbol. Use it when you don't
                    -- care about the value of the argument.