transpose :: [[a]] -> [[a]]
transpose ([]:_) = []
transpose x = map head x : transpose(map tail x)

main = do
    let a = [[1,2,3],[4,5,6]] 
    putStrLn $ "Original Matrix:" ++ show(a)
    let tt = transpose a
    putStrLn $ "Transpose Matrix:" ++ show(tt)