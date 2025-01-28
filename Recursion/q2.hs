--Product of a list of numbers 

prduct :: [Int] -> Int
prduct [] = 1
prduct [x] = x
prduct (x:xs) = x * prduct (xs)

main = do   
    let l = [1,2,3,4,5]
    let ans = prduct l 
    putStrLn $ "Product of elements in: " ++ show l ++ " is:" ++ show ans