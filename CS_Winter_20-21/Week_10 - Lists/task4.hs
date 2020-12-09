import Data.Char
import Data.List

main :: IO()
main = do
    print $ isAscending 123 == True
    print $ isAscending 122 == False
    print $ isAscending 0 == True
    print $ isAscending 10 == False

isAscending :: Int -> Bool
isAscending n = getXs == nubBy (>=) getXs
    where
        getXs = map digitToInt $ show n
