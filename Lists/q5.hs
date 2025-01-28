middle3 :: [Integer] -> [Integer]
middle3 ans = do
    let mid = div(length ans) 2
    [ans !! (mid-1),ans !! (mid),ans !! (mid+1)]

main = do
    let num = [1,2,3,4,5,6]
    let ans = middle3 num
    putStrLn $ show ans