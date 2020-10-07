import Data.List -- has a built-in function length

main :: IO()
main = do
    print $ myLength [0, 1, 2]
    print $ myLength2 [0, 1, 2]
    return ()

-- Solution 1
myLength :: [Int] -> Int
myLength [] = 0
myLength lst = 1 + myLength (tail lst)

-- Solution 2
myLength2 lst = length lst