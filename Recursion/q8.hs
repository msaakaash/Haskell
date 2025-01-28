-- power

pow :: Int -> Int -> Int
pow n 0 = 1
pow n 1 = n
pow n e = n * pow n (e-1)

main = do
    let a = pow 2 6
    putStrLn $ show (a)