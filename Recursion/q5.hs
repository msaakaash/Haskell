--sum of digits of a number

sumOfDigits :: Int -> Int 
sumOfDigits 0 = 0
sumOfDigits x = (mod x 10) + (sumOfDigits (div x 10))


main = do
    let a = 12345
    putStrLn $ "The sum of digits in " ++ show a ++ " is:" ++ show(sumOfDigits a)