--joining List
strjoin :: String -> String -> String
strjoin s1 s2 = s1 ++ s2

main = do
    putStr "Enter String 1:"
    x <- getLine 

    putStr "Enter String 2:"
    y <- getLine
    
    let s =  strjoin x y
    putStrLn $ "Joined String :" ++ show s