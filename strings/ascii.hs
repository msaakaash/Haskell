getAscii :: Char -> Int
getAscii x = fromEnum x

main = do
    putStr "Enter a character:"
    x <- getLine 
    putStrLn $ show x ++ " in ascii is :" ++ show(getAscii (head x))