


bin2dec :: Int -> Int
bin2dec 0 = 0
bin2dec a = a `mod` 10 +  2 * (bin2dec (a `div` 10))




main :: IO()
main = do
    print(bin2dec 101)
    print(bin2dec 0)
    print(bin2dec 1)
    print(bin2dec 10001)