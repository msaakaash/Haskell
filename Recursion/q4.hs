--Sum of n natural numbers;

sumEm :: Int -> Int
sumEm 0 = 0
sumEm x = x + sumEm (x-1)

main = do
    let a = 5
    putStrLn $ "The sum of first " ++ show a  ++" numbers is:"++ show (sumEm a) ;