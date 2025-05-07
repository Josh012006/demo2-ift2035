


bin2dec :: Int -> Int
bin2dec 0 = 0
bin2dec 1 = 1
bin2dec a = let r = a `mod` 10
                suiv = a `div` 10
            in r +  2 * (bin2dec suiv)




main :: IO()
main = do
    print(bin2dec 101)
    print(bin2dec 0)
    print(bin2dec 1)
    print(bin2dec 10001)