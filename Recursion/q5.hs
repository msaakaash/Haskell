--sum of digits of a number

sumOfDigits :: Int -> Int 
sumOfDigits x
    | x <= 0 = 0
    | otherwise = (mod x 10) + (sumOfDigits (div x 10))


main = do
    let a = 123456789
    putStrLn $ "The sum of digits in " ++ show a ++ " is:" ++ show(sumOfDigits a)