import Data.List

main :: IO()
main = do
    print $ f 1 100 5
    return ()

inBetween :: Int -> Int -> Int -> Bool
inBetween a b c = helper [a + 1 .. b - 1] c -- c >= a + 1 && c <= b - 1
 where
     helper lst c = c >= head lst && c <= last lst


-- [a, (a + 2), ... b]
f a b n = [a, a + n .. b]