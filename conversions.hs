--km to m
km :: Float -> Float
km x = x * 1000

--m to km
m :: Float -> Float
m x = x / 1000

--feet to cm
feettocm :: Float -> Float 
feettocm x = x*30.48

--cm to feet
cmtofeet :: Float -> Float
cmtofeet x = x/30.48

--farenheit to celsius
farentocel :: Float -> Float
farentocel f = (f-32)*5/9

--celsius to farenheit
celtofaren :: Float -> Float
celtofaren c = ((c*9)/5)+32

--getting ascii value
toAscii :: Char -> Int
toAscii x = fromEnum x

--getting ordinal value
fromAscii :: Int -> Char
fromAscii x = toEnum x

main = do 
    putStrLn("Conversions:")
    putStrLn "1 for km to m"
    putStrLn "2 for m to km"
    putStrLn "3 for feet to cm"
    putStrLn "4 for cm to feet"
    putStrLn "5 for farenheit to celsius"
    putStrLn "6 for celsius to farenheit"
    putStrLn "7 for getting ascii value"
    putStrLn "8 for ordival value"
    putStr "Enter your choice:"
    c <- getLine
    putStr "Enter the number:"
    x1 <- getLine
    let a = read x1 :: Float
    if c=="1" then print(show a ++ " km in m is:"  ++ show(km a) ++" m") 
    else if c=="2" then print(show a ++ " m in km is:"  ++ show(m a) ++" km")
    else if c=="3" then print(show a ++ " feet in cm is:"  ++ show(feettocm a) ++" cm")
    else if c=="4" then print(show a ++ " cm in feet is:"  ++ show(cmtofeet a) ++" feet")
    else if c=="5" then print(show a ++ " farenheit in celsius is:"  ++ show(farentocel a) ++" C")
    else if c=="6" then print(show a ++ " celsius in farenheit is:"  ++ show(celtofaren a) ++" F")
    else if c == "7" then do
        putStr "Enter the character: "
        v <- getLine
        if length v == 1 then print (toAscii (head v))
        else putStrLn "Please enter a single character."
    else if c=="8" then do
        putStr "Enter the ASCII value: "
        v <- getLine
        let num = read v :: Int
        print (fromAscii num)
    else print("ERROR")