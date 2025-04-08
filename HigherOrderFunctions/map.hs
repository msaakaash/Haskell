mapda :: (a -> b) -> [a] -> [b]
mapda f (x:xs) = f x : mapda f xs
mapda f [] = []

main = do 
    putStrLn $ show(mapda odd [1,2,3,4,5])