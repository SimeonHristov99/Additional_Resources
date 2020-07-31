import Data.List

main :: IO()
main = do
    print $ onlyUnique [1, 1, 2, 2, 3, 3, 4, 4, 6, 5] -- [5, 6, 4]
    return ()

onlyUnique lst = if null lst then error "Empty list" else product $ take 3 $ reverse lst