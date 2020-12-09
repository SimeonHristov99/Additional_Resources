main :: IO()
main = do
    print $ addOneXsPA [1, 2, 3, 4, 5] == [2, 3, 4, 5, 6]
    print $ addOneNPA 5 == 6
    print $ sqPlusOne 5 == 26

addOneXsPA :: [Int] -> [Int]
addOneXsPA xs = map (+1) xs

addOneNPA :: Int -> Int
addOneNPA = (+1)

sqPlusOne :: Int -> Int
sqPlusOne = (+1) . (^2)