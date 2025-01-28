--count numhber of zeros in a number

zeroDigits :: Int -> Int 
zeroDigits x = count x 0

count :: Int -> Int -> Int
count x c
    | x == 0 = c
    | otherwise = if (mod x 10) == 0 then count (div x 10) (c+1) else count (div x 10) (c)

main = do
    let a = 210210
    putStrLn $ "The sum of digits in " ++ show a ++ " is:" ++ show(zeroDigits a)