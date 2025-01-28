--product of two numbers

pr :: Int -> Int -> Int
pr _ 0 = 0 
pr a b 
    | b < 0 = error "second number must be non negative"
    | otherwise = a + pr a (b - 1)

main = do
    let a = pr 10 20
    putStrLn $ show a