main :: IO()
main = do
    --print $ encrypt ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" 3 -- "GZZGIQRUTJUTZUSUXXUCGZZKTGS"
    print $ crackall ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- ["GZZGIQRUTJUTZUSUXXUCGZZKTGS","HAAHJRSVUKVUAVTVYYVDHAALUHT","IBBIKSTWVLWVBWUWZZWEIBBMVIU","JCCJLTUXWMXWCXVXAAXFJCCNWJV","KDDKMUVYXNYXDYWYBBYGKDDOXKW","LEELNVWZYOZYEZXZCCZHLEEPYLX","MFFMOWXAZPAZFAYADDAIMFFQZMY","NGGNPXYBAQBAGBZBEEBJNGGRANZ","OHHOQYZCBRCBHCACFFCKOHHSBOA","PIIPRZADCSDCIDBDGGDLPIITCPB","QJJQSABEDTEDJECEHHEMQJJUDQC","RKKRTBCFEUFEKFDFIIFNRKKVERD","SLLSUCDGFVGFLGEGJJGOSLLWFSE","TMMTVDEHGWHGMHFHKKHPTMMXGTF","UNNUWEFIHXIHNIGILLIQUNNYHUG","VOOVXFGJIYJIOJHJMMJRVOOZIVH","WPPWYGHKJZKJPKIKNNKSWPPAJWI","XQQXZHILKALKQLJLOOLTXQQBKXJ","YRRYAIJMLBMLRMKMPPMUYRRCLYK","ZSSZBJKNMCNMSNLNQQNVZSSDMZL","ATTACKLONDONTOMORROWATTENAM","BUUBDLMPOEPOUPNPSSPXBUUFOBN","CVVCEMNQPFQPVQOQTTQYCVVGPCO","DWWDFNORQGRQWRPRUURZDWWHQDP","EXXEGOPSRHSRXSQSVVSAEXXIREQ"]
    return ()

encrypt :: [Char] -> String -> Int -> String
encrypt alphabet input k = map (\x -> encode alphabet x) input
 where
     encode alphabet char = alphabet!!(mod ((helper alphabet) + k) (length alphabet))
      where
          helper [] = error "blah"
          helper (x:xs)
           | x == char = 0
           | otherwise = 1 + helper xs
{-
helper x='A' xs= ['B'..'Z'] 
-- x /= 'F'
> 1 + helper x='B' ['C' .. 'Z']
-}

crackall ::[Char] -> String -> [String]
crackall alphabet input = [ encrypt alphabet input k | k <- [1 .. (length alphabet - 1)]]

{-
crackall aplhabet=['A'..'Z'] input="FYYFHPQTSITSYTRTWWTBFYYJSFR"
> encrypt alphabet input k=1
> encrypt alphabet=['A'..'Z'] input="FYYFHPQTSITSYTRTWWTBFYYJSFR" k=1
> map (\x -> encode alphabet x) input="FYYFHPQTSITSYTRTWWTBFYYJSFR"
> (\F -> encode alphabet=['A'..'Z'] F) F
-}