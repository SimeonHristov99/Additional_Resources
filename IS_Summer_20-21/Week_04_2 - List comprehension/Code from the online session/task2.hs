import Data.List

main :: IO()
main = do
    print $ listOfChars [1, 2, 3, 4, 4, 4, 5 ,5, 5, 6, 5] 5
    print $ listOfChars "ashakfdshgfjshdgfsdjsfdsd" 's'
    return ()

listOfChars :: (Eq a) => [a] -> a -> [a]
listOfChars lst element = filter (/= element) lst
-- Go through lst and leave the elements which /= elements

-- Eq a is a contraint on the type a