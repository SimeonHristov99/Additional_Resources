main :: IO()
main = do
    print $ hasElementsPM [] == False
    print $ hasElementsPM [1, 2, 3] == True
    print $ hasElementsFunc [] == False
    print $ hasElementsFunc [1, 2, 3] == True

hasElementsPM :: [Int] -> Bool
hasElementsPM [] = False
hasElementsPM _ = True -- hasElementsPM xs = True

hasElementsFunc :: [Int] -> Bool
hasElementsFunc xs = length xs /= 0 -- not $ null xs