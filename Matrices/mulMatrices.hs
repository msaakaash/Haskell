dp :: [Int] -> [Int] -> [Int]
dp a b = sum $ zipWith (*) a b

mul :: [[Int]] -> [[Int]] -> [[Int]]
mul a b = 
    let bt = transpose b 
    in [[dp row col | col <- bt] | row <- a]

transpose :: [[a]] -> [[a]]
transpose ([]:_) = []
transpose x = map head x : transpose(map tail x)


main = do
    let a = [[1,2,3],[4,5,6],[7,8,9]] 
    let b = [[1,2,3],[4,5,6],[7,8,9]] 
    putStrLn $ "Original Matrix:" ++ show(a)
    putStrLn $ "Original Matrix:" ++ show(b)

    let tt = mul a b
    putStrLn $ "Mul Matrix:" ++ show(tt)