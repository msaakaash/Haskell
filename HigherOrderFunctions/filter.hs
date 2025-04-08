filda :: (a -> Bool) -> [a] -> [a]
filda f [] = []
filda f (x:xs)
    | f x = x : filda f xs
    | otherwise = filda f xs

main = do 
    putStrLn $ show(filda odd [1,2,3,4,5])