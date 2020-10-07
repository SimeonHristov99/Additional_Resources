import Data.List

main :: IO()
main = do
    print $ myL [] -- 4
    print $ isIn 5 [5, 6] -- 4
    return ()

myL :: [Int] -> Int
myL [] = 0
myL lst = 1 + myL(tail lst)

--isIn :: Int -> [Int] -> Bool
isIn element lst = elem element lst