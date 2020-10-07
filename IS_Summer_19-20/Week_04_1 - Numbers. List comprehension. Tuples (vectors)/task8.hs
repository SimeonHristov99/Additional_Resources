main :: IO()
main = do
    print $ validate 1714 -- False
    print $ validate 12345 -- False
    print $ validate 891 -- False
    print $ validate 123 -- False
    print $ validate 2121 -- True
    print $ validate 4736778291034 -- True
    print $ validate 4485756008412 -- True
    print $ validate 4214154976719 -- True
    return ()
    
val :: Integer -> Integer
val n = helper n 0
 where
     getValue :: Integer -> Integer
     getValue a
      | a * 2 >= 10 = mod (a * 2) 10 + div (a * 2) 10
      | otherwise = a * 2
     helper :: Integer -> Integer -> Integer
     helper n result
      | n < 10 = result * 10 + n
      | n < 100 = (result * 10 + (mod n 10)) * 10 + getValue (mod (div n 10) 10)
      | otherwise = helper (div n 100) ((result * 10 + (mod n 10)) * 10 + getValue (mod (div n 10) 10))

addDigits :: Integer -> Integer
addDigits n
 | n < 10 = n
 | otherwise = mod n 10 + addDigits (div n 10)

validate :: Integer -> Bool
validate number = mod (addDigits $ val number) 10 == 0