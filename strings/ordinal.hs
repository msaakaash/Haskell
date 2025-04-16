fromAscii :: Int -> Char
fromAscii x = toEnum x

main = do
    putStr "Enter a integer:"
    y <- getLine 
    let x = read y :: Int
    putStrLn $ show x ++ " in ordinal is :" ++ show(fromAscii x)