--filter using pattern matching

ft1 :: (a->Bool) -> [a] -> [a]
ft1 f [] = []
ft1 f (x:xs) = if f x then x:ft1 f xs else ft1 f xs

main = do
    let oddz = ft1 odd [1,2,3,4,5]
    putStrLn $ show(oddz)
