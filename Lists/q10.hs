--A Haskell function to display all the duplicates elements in the list.


--A haskell function to find the Number Occurring Odd Number of Times in an list.
getCount :: Int -> [Int] -> Int
getCount xi xis = length [ i | i<-xis,i==xi]

findDuplicates :: [Int] -> [Int]
findDuplicates [] = []
findDuplicates xs = do
    let count = getCount (head xs) xs
    if (count > 1) then head xs : findDuplicates (filter (/= head xs) xs)
    else findDuplicates (filter (/= head xs) xs)

main = do
    let list1 = [1,2,2,3,4,4,4,5,6,6]
    putStrLn $ show list1
    let num = findDuplicates list1
    putStrLn $ "Duplicates:" ++ show num