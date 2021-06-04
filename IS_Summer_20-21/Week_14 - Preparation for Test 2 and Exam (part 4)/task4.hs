main :: IO()
main = do
    print $ removeEveryKth 3 [1,2,3,4,5,6,7,8,9] == [1,2,4,5,7,8]
    print $ removeEveryKth 4 [1,2,3,4,5,6,7] == [1,2,3,5,6,7]
    print $ removeEveryKth 4 ["Steve", "John", "Bob", "Rob", "Joe"] == ["Steve", "John", "Bob", "Joe"]
    print $ removeEveryKth 4 [2] == [2]
    print $ removeEveryKth 1 [2] == []

removeEveryKth :: Int -> [a] -> [a]
removeEveryKth k xs = [ x | (x, i) <- zip xs [1 ..] , mod i k /= 0]