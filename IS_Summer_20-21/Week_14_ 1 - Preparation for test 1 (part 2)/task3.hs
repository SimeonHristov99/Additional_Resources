import Data.Char

main :: IO()
main = do
    print $ isInteresting 410
    return ()

isInteresting :: Int -> Bool
isInteresting x = if n < 1 then error "Number is not natural" else mod x (sum $ map digitToInt (show x)) == 0