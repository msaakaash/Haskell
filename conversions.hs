km :: Float -> Float
km x = x * 1000

m :: Float -> Float
m x = x / 1000

feettocm :: Float -> Float 
feettocm x = x*30.48

cmtofeet :: Float -> Float
cmtofeet x = x/30.48

main = do 
    putStrLn("Conversions:")
    putStrLn "1 for km to m"
    putStrLn "2 for m to km"
    putStrLn "3 for feet to cm"
    putStrLn "4 for cm to feet"
    putStr "Enter your choice:"
    c <- getLine
    putStr "Enter the number:"
    x1 <- getLine
    let a = read x1 :: Float
    if c=="1" then print(show a ++ " km in m is:"  ++ show(km a) ++" m") 
    else if c=="2" then print(show a ++ " m in km is:"  ++ show(m a) ++" km")
    else if c=="3" then print(show a ++ " feet in cm is:"  ++ show(feettocm a) ++" cm")
    else if c=="4" then print(show a ++ " cm in feet is:"  ++ show(cmtofeet a) ++" feet")
    else print("ERROR")