--A Haskell function that reads a list and print the sum of even numbers in the list.

evenNumbers :: [Int] -> Int
evenNumbers xs = sum(filter even xs)

main = do
    let num = [1,2,3,4,5]
    let od = evenNumbers num
    putStrLn $ "List:" ++ show num
    putStrLn $ "Even numbers sum:" ++ show od