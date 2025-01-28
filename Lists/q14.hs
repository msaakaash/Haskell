--A Haskell function that reads a list and find the smallest element in the list.

smallest :: Int -> [Int] -> Int
smallest x [] = x
smallest x xs = do
        let first = head xs
        if first < x then smallest first (tail xs)
        else smallest x (tail xs)

main = do
    let num = [1,2,-3,4,5]
    let od = smallest (head num) (tail num)
    putStrLn $ "List:" ++ show num
    putStrLn $ "smallest number:" ++ show od