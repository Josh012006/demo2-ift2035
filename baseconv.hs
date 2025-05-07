base2dec :: Int -> Int -> Int
base2dec _ 0 = 0
base2dec a num = num `mod` 10 +  a * (base2dec a (num `div` 10))

dec2base :: Int -> Int -> Int
dec2base _ 0 = 0
dec2base a num = num `mod` a + 10 * dec2base a (num `div` a)

baseconv :: Int -> Int -> Int -> Int
baseconv a b num = dec2base b (base2dec a num)




main :: IO()
main = do
    print(baseconv 2 10 10001)
    print(baseconv 10 2 17)
    print(baseconv 2 8 11110010111)