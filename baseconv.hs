baseconv :: Int -> Int -> Int -> Int
baseconv _ _ 0 = 0
baseconv a b num = a `mod` 2 + 10 * dec2bin (a `div` 2)