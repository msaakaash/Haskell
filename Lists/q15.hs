--A Haskell function that reads a list and print the sum of elements at odd list indices.
oddIndices :: [Int] -> Int
oddIndices su = sum [x|(i,x) <- zip [0,1..] su,odd i]

main = do
    let num = [1,2,-3,4,5]
    let od = oddIndices num
    putStrLn $ "List:" ++ show num
    putStrLn $ "Numbers at Odd Indices:" ++ show od