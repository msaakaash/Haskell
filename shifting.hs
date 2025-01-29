convert :: Char -> Int -> Char
convert ch k = toEnum (fromEnum ch + k )

shiftString :: String -> Int -> String
shiftString str k = map (`convert` k) str

lower :: String  -> String
lower str = map (`convert` (32)) str

upper :: String-> String 
upper str = map (`convert` (-32)) str

main = do
    putStrLn "Options:"
    putStrLn "1.Shifting by k"
    putStrLn "2.Lower"
    putStrLn "3.Upper"
    putStr "Enter your choice:"
    x <- getLine
    if x=="1" then do
        putStr "Enter a String:"
        g <- getLine
        putStr "Enter shift number:"
        gg <- getLine
        let k1 = read gg :: Int
        let res = shiftString g k1
        print(res)
    else if x=="2" then do
        putStr "Enter a String:"
        g <- getLine
        let res = lower g
        print(res)
    else if x=="3" then do
        putStr "Enter a String:"
        g <- getLine
        let res = upper g
        print(res)
    else
        print("Erro")
