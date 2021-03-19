main :: IO()
main = do
    print $ getPrimesLC 1 100 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesLC 100 1 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesHOF 1 100 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesHOF 100 1 == [7,17,37,47,67,71,73,79,97]

isPrime :: Int -> Bool
isPrime n = n > 1 && all (\ x -> mod n x /= 0) [2 .. n - 1]

getPrimesLC :: Int -> Int -> [Int]
getPrimesLC x y = [ i | i <- [min x y .. max x y], isPrime i && any (\ char -> '7' == char) (show i)] -- any "97", '9'

getPrimesHOF :: Int -> Int -> [Int]
getPrimesHOF x y = filter (\ i -> isPrime i && any (\ char -> '7' == char) (show i)) [min x y .. max x y]