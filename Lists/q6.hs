lengthList :: [a] -> Int
lengthList xs = length(xs)
main = do
    let aa = [1,2,3,4]
    let len = lengthList aa
    putStrLn $ show len