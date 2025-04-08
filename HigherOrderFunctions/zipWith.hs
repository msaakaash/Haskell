zi :: (a->b->c) -> [a] -> [b] -> [c]
zi f (x:xs) (y:ys) = f x y : zi f xs ys
zi f _ _ = []

main = do
    putStrLn $ show(zi (+) [1,2,3] [4,5,6])