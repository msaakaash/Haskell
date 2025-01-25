main = do
    putStr("Enter number:1")
    x <- getLine
    let num1 = read x :: Int
    putStr("Enter number2:")
    y <- getLine
    let num2 = read y :: Int
    print(num1 + num2)