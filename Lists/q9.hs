--A haskell function to find the Number Occurring Odd Number of Times in an list.
getCount :: Int -> [Int] -> Int
getCount xi xis = length [ i | i<-xis,i==xi]

findOddOc :: [Int] -> [Int]
findOddOc [] = []
findOddOc xs = do
    let count = getCount (head xs) xs
    if (mod count 2) == 1 then head xs : findOddOc (filter (/= head xs) xs)
    else findOddOc (filter (/= head xs) xs)

main = do
    let list1 = [1,1,1,1,1,2,2,3,4,4,4]
    putStrLn $ show list1
    let num = findOddOc list1
    putStrLn $ "Numbers occuring for odd number of times:" ++ show num