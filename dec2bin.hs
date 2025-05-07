
dec2bin :: Int -> Int
dec2bin 0 = 0
dec2bin a = a `mod` 2 + 10 * dec2bin (a `div` 2)



main :: IO()
main = do
    print(dec2bin 0)
    print(dec2bin 1)
    print(dec2bin 5)
    print(dec2bin 17)
    print(dec2bin 126)
