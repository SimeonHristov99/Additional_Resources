main :: IO()
main = do
    print $ crackall ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- ["GZZGIQRUTJUTZUSUXXUCGZZKTGS","HAAHJRSVUKVUAVTVYYVDHAALUHT","IBBIKSTWVLWVBWUWZZWEIBBMVIU","JCCJLTUXWMXWCXVXAAXFJCCNWJV","KDDKMUVYXNYXDYWYBBYGKDDOXKW","LEELNVWZYOZYEZXZCCZHLEEPYLX","MFFMOWXAZPAZFAYADDAIMFFQZMY","NGGNPXYBAQBAGBZBEEBJNGGRANZ","OHHOQYZCBRCBHCACFFCKOHHSBOA","PIIPRZADCSDCIDBDGGDLPIITCPB","QJJQSABEDTEDJECEHHEMQJJUDQC","RKKRTBCFEUFEKFDFIIFNRKKVERD","SLLSUCDGFVGFLGEGJJGOSLLWFSE","TMMTVDEHGWHGMHFHKKHPTMMXGTF","UNNUWEFIHXIHNIGILLIQUNNYHUG","VOOVXFGJIYJIOJHJMMJRVOOZIVH","WPPWYGHKJZKJPKIKNNKSWPPAJWI","XQQXZHILKALKQLJLOOLTXQQBKXJ","YRRYAIJMLBMLRMKMPPMUYRRCLYK","ZSSZBJKNMCNMSNLNQQNVZSSDMZL","ATTACKLONDONTOMORROWATTENAM","BUUBDLMPOEPOUPNPSSPXBUUFOBN","CVVCEMNQPFQPVQOQTTQYCVVGPCO","DWWDFNORQGRQWRPRUURZDWWHQDP","EXXEGOPSRHSRXSQSVVSAEXXIREQ"]
    return ()

encrypt :: [Char] -> String -> Int -> String
encrypt alphabet input k = map (encode alphabet) input
 where
     encode alphabet char = alphabet!!(mod (k + (helper alphabet)) (length alphabet))
      where
       helper (x:xs)
        | x == char = 0
        | otherwise = 1 + helper xs

crackall :: [Char] -> String -> [String]
crackall alphabet input = [ encrypt alphabet input k | k <- [1 .. (length alphabet - 1)]]

{-
Algorithm:
 1. Write the formula for switching a character with k positions.
 2. Define a function that can encrypt/move a character by k positions.
 3. Define a loop from 1 to len - 1. Use it in a list comprehension.
-}