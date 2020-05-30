main :: IO()
main = do
    print $ dnaToRna "TTTT" -- "UUUU"
    print $ dnaToRna "GCAT" -- "GCAU"
    print $ dnaToRna "GACCGCCGCC" -- "GACCGCCGCC"
    return ()

dnaToRna :: String -> String
dnaToRna "" = ""
dnaToRna (l:ls)
 | l == 'T' = 'U' : dnaToRna ls
 | otherwise = l : dnaToRna ls