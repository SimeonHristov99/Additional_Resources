# Tasks

# Task 1
Define a function that accepts an alphabet and an input and returns all the possible shifts of the Ceaser cypher.

Test case:

    crackall ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -> ["GZZGIQRUTJUTZUSUXXUCGZZKTGS","HAAHJRSVUKVUAVTVYYVDHAALUHT","IBBIKSTWVLWVBWUWZZWEIBBMVIU","JCCJLTUXWMXWCXVXAAXFJCCNWJV","KDDKMUVYXNYXDYWYBBYGKDDOXKW","LEELNVWZYOZYEZXZCCZHLEEPYLX","MFFMOWXAZPAZFAYADDAIMFFQZMY","NGGNPXYBAQBAGBZBEEBJNGGRANZ","OHHOQYZCBRCBHCACFFCKOHHSBOA","PIIPRZADCSDCIDBDGGDLPIITCPB","QJJQSABEDTEDJECEHHEMQJJUDQC","RKKRTBCFEUFEKFDFIIFNRKKVERD","SLLSUCDGFVGFLGEGJJGOSLLWFSE","TMMTVDEHGWHGMHFHKKHPTMMXGTF","UNNUWEFIHXIHNIGILLIQUNNYHUG","VOOVXFGJIYJIOJHJMMJRVOOZIVH","WPPWYGHKJZKJPKIKNNKSWPPAJWI","XQQXZHILKALKQLJLOOLTXQQBKXJ","YRRYAIJMLBMLRMKMPPMUYRRCLYK","ZSSZBJKNMCNMSNLNQQNVZSSDMZL","ATTACKLONDONTOMORROWATTENAM","BUUBDLMPOEPOUPNPSSPXBUUFOBN","CVVCEMNQPFQPVQOQTTQYCVVGPCO","DWWDFNORQGRQWRPRUURZDWWHQDP","EXXEGOPSRHSRXSQSVVSAEXXIREQ"]

# Task 2
Define a function that checks whether a string is part of another string.

Test case:

    substring "Haskell" "Haskell Curry" -> True
    substring "Curry" "Haskell Curry" -> True
    substring "Curry" "Haskell C5urry" -> False
    substring "Turing" "Haskell Curry" -> False

# Task 3
Define a function that takes an alphabet, a list of common words and an input. The function returns the most plausable decryption.

Test case:

    crackcandidates ['A'..'Z'] ["THE","AND","AT","ON","IS"] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -> ["ATTACKLONDONTOMORROWATTENAM"]

# Task 4
Define a function that takes an alphabet, an offset, a step, a blockSize and a normalized message. The function returns the string made from taking the first blockSize letters, encrypting them with the offset and then encryting the next blockSize letters with (offset + step) offset.

Test case:

    polyencrypt ['A'..'Z'] 5 1 7 "ATTACKLONDONTOMORROWATTENAM" -> "FYYFHPQUTJUTZUTVYYVDHBBMVIU"

# Task 5
Define a function that decrypts the message from task 4.

Test case:

    polydecrypt ['A'..'Z'] 5 1 7 "FYYFHPQUTJUTZUTVYYVDHBBMVIU" -> "ATTACKLONDONTOMORROWATTENAM"