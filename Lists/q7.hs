concatenate :: [a] -> [a] -> [a]
concatenate list1 list2 = list1 ++ list2

main = do
    let l1 = [1,2,3];
    let l2 = [4,5];
    let l3 = concatenate l1 l2
    putStrLn $ show l1 ++ " + " ++ show l2 ++ " is :" ++ show l3