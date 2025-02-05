--map implementation using pattern matching

mp1 :: (a->b) -> [a] -> [b]
mp1 f [] = []
mp1 f (x:xs) = f x:mp1 f xs


main = do
    let oddz = mp1 odd [1,2,3,4,5]
    putStrLn $ show(oddz)
