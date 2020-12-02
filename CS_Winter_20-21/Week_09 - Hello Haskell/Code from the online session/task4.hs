main :: IO()
main = do
    print $ inside 5 1 4 == True
    print $ inside 10 50 20 == True
    print $ inside 10 50 1 == False
    print $ insideXs 5 1 4 == True
    print $ insideXs 10 50 20 == True
    print $ insideXs 10 50 1 == False
    print $ (insideLambda 5 1) 4 == True
    print $ (insideLambda 10 50) 20 == True
    print $ (insideLambda 10 50) 1 == False

inside :: Int -> Int -> Int -> Bool
inside a b x
 | a > b = inside b a x
 | otherwise = x >= a && x <= b

insideXs :: Int -> Int -> Int -> Bool
insideXs a b x
 | a > b = insideXs b a x
 | otherwise = elem x [a .. b]

insideLambda :: Int -> Int -> (Int -> Bool)
insideLambda a b
 | a > b = insideLambda b a
 | otherwise = (\ x -> x >= a && x <= b)