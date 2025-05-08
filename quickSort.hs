

filtre :: [t] -> t -> (t -> t -> Bool) -> [t]
filtre [] _ _ = []
filtre (x:xs) a op = if op x a then x : (filtre xs a op) else (filtre xs a op)


quicksort :: [t] -> (t -> t -> Bool) -> [t]
quicksort [] _ = []
quicksort (x:xs) op = (quicksort left op) ++ [x] ++ (quicksort right op)
                      where left = filtre (xs) x op
                            right = filtre (xs) x (\a b -> not (op a b))



main :: IO()
main = do
    let isInf a b = a < b
    print(quicksort ([] :: [Int]) isInf)
    print(quicksort [1, 3, 5, 9, 4, 6, 7, 8, 8, 2] isInf)