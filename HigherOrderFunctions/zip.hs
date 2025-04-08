zi :: [a] -> [b] -> [(a,b)]
zi (x:xs) (y:ys) = (x,y) : zi xs ys
zi _ _ = []

main = do
    putStrLn $ show(zi [12,72,93] "zippity")