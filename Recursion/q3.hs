--Reverse a numbers

rev :: Int -> Int
rev x = reverseNumber x 0

reverseNumber :: Int -> Int -> Int
reverseNumber 0 r = r
reverseNumber n r = reverseNumber (div n 10) (r*10 + (mod n 10))

main = do  
    let a = 321;
    let reverse_a = rev a
    putStrLn $ show a ++ " reversed is:" ++ show reverse_a

