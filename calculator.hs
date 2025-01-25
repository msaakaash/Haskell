add :: Int -> Int -> Int
add x y = x + y
sub :: Int -> Int -> Int
sub x y = x - y
quotient :: Int -> Int -> Int
quotient x y = x `div` y
remainder :: Int -> Int -> Int
remainder x y = x `mod` y

main = do
    putStr "Enter the first number(a):"
    x <- getLine
    putStr "Enter the second number(b):"
    y <- getLine
    let a = read x :: Int
    let b = read y :: Int
    putStrLn "Operations:"
    putStrLn "1 for Addition:"
    putStrLn "2 for Subtraction:"
    putStrLn "3 for Division:"
    putStrLn "4 for Remainder when(a divided by b):"
    putStr "Enter your choice:"
    c <- getLine
    if c=="1" then print(show a ++ " + " ++ show b ++ " is: " ++ show (add a b))
    else if c=="2" then print(show a ++ " - " ++ show b ++ " is: " ++ show (sub a b))
    else if c=="3" then print(show a ++ " / " ++ show b ++ " is: " ++ show (quotient a b))
    else if c=="4" then print(show a ++ " % " ++ show b ++ " is: " ++ show (remainder a b))
    else print("Error")
