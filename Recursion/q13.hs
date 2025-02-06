--elem function

el :: (Eq a) => a -> [a] -> Bool
el a [] = False
el i (x:xs)
    | i == x = True
    | otherwise = el i xs

main = do 
    let a = el 33 [1,2,3,4,5,6]
    print(a)