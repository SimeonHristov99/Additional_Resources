main :: IO()
main = do
    print $ (applyN (\x -> 2 * x) 5) 2 -- 64
    print $ (applyN (\x -> div x 10) 2) 100 -- 1
    print $ compose (\x -> 2 * x) (\x -> x + 3) 5 -- 16
    return ()

compose :: (Int -> Int) -> (Int -> Int) -> Int -> Int
compose f g x = f $ g x

applyN :: (Int -> Int) -> Int -> (Int -> Int)
applyN f number
 | number < 1 = error "number has to be greater than 0"
 | number == 1 = f
 | otherwise = f . applyN f (number - 1)




{-
f g h x
f (g (h x)) = (f . g . h) x
String = [Char]
-}

{-
apllyN f 0 = f
applyN f numb = f . applyN f (numb - 1)

-}

{-
(applyN (\x -> 2 * x) 5) 2 -- 64
 2 * (2 * (2* (2 * (2 * 2)))))
-}