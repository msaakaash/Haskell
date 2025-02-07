zip1 :: [a] -> [b] -> [(a,b)]
zip1 [] _ = []
zip1 _ [] = []
zip1 (x:xs) (y:ys) = (x,y) : zip1 xs ys

main = do  
    let s = zip1 [1,2,3] [1,2,3,4,5]
    print(s)