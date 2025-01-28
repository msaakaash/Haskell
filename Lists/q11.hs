--A Haskell function finds the product of elements of a list.
main = do
    let a = [1,2,3,4,5]
    let pro = product a
    putStrLn $ "The Product of elements in " ++ show a ++" is: "++ show pro
