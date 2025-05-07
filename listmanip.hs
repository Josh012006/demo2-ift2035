somme :: [Int] -> Int 
somme [] = 0
somme (x : xs) = x + (somme xs)


ajoute1s :: [Int] -> [Int]
ajoute1s [] = []
ajoute1s (x :xs) = (x + 1) : (ajoute1s xs)


enleve :: Int -> [Int] -> [Int]
enleve _ [] = []
enleve a (x : xs) = if x <= a then enleve a xs else x : (enleve a xs)


retourne :: [Int] -> [Int] 
retourne [] = []
retourne (x : xs) = (retourne xs) ++ [x]




main :: IO()
main = do
    let xs = [1, 2, 3, 4, 5, 6]
    print(somme xs)
    print(ajoute1s xs)
    print(enleve 3 xs)
    print(retourne xs)
