import Data.List -- has a built-in function sum

main :: IO()
main = do
    print $ mySum [0, 1, 2] -- 3
    print $ mySum2 [0, 1, 2] -- 3
    return ()

-- Solution 1
mySum ::[Int] -> Int
mySum [] = 0
mySum (l:ls) = l + mySum ls

-- Solution 2
mySum2 lst = sum lst