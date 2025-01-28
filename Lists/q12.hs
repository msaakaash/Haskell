--A Haskell function that reads a list and print the odd numbers in the list.

oddNumbers :: [Int] -> [Int]
oddNumbers xs = filter odd xs

main = do
    let num = [1,2,3,4,5]
    let od = oddNumbers num
    putStrLn $ "List:" ++ show num
    putStrLn $ "Odd Numbers:" ++ show od