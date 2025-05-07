

inferieur :: [Int] -> Int -> [Int]
inferieur [] _ = []
inferieur (x:xs) a = if x < a then x : (inferieur xs a) else (inferieur xs a)

superieur :: [Int] -> Int -> [Int]
superieur [] _ = []
superieur (x:xs) a = if x > a then x : (superieur xs a) else (superieur xs a)


quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort (inferieur (x:xs) x) ++ [x] ++ quicksort (superieur (x:xs) x)


main :: IO()
main = do
    print(quicksort [])
    print(quicksort [1, 3, 5, 9, 4, 6, 7, 8, 2])