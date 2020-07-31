main :: IO()
main = do
    print $ isSymmetric Nil == True
    print $ isSymmetric t3 == False
    print $ isSymmetric t4 == True
    print $ isSymmetric t5 == True
    return ()

isSymmetric :: BTree -> Bool
isSymmetric Nil = True
isSymmetric (Node current left right) = areSymmetric left right
 where
     areSymmetric :: BTree -> BTree -> Bool
     areSymmetric Nil Nil = True
     areSymmetric (Node lCurrent lLeft lRight) (Node rCurrent rLeft rRight) = (lCurrent == rCurrent) && (areSymmetric lLeft rRight) && (areSymmetric lRight rLeft)
     areSymmetric _ _ = False
     
---------------------------------------------------------------------
data BTree = Nil | Node Int BTree BTree

t3 :: BTree                         --   1
t3 = Node 1 (Node 2 Nil Nil)    --  / \
            (Node 3 Nil Nil)    -- 2   3

t4 :: BTree                                 --     1
t4 = Node 1 (Node 2 (Node 3 Nil Nil)    --    / \
                    Nil)                  --   2   2
            (Node 2 Nil                   --  /     \
                    (Node 3 Nil Nil))   -- 3       3

t5 :: BTree                                         --       1
t5 = Node 1 (Node 2 (Node 3 Nil Nil)            --    /     \
                    (Node 7 (Node 5 Nil Nil)    --   2       2
                            Nil))                 --  / \     / \
            (Node 2 (Node 7 Nil                   -- 3   7   7   3
                            (Node 5 Nil Nil))   --    /     \
                    (Node 3 Nil Nil))           --   5       5
---------------------------------------------------------------------