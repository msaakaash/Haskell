isPrime :: Int -> Bool
isPrime n = null [d | d <- [2..n-1],n `mod` d == 0]

isPer :: Int -> Bool
isPer n
    | sumOfDivisors == n = True
    | otherwise = False
    where 
        sumOfDivisors = sum [d | d <- [1..n-1],n `mod` d == 0]

isArm :: Int -> Bool 
isArm n = n == sum ( map (^ numOfDigits) digits)
  where
    digits = map (read . (:[])) (show n)
    numOfDigits = length digits

gpp :: [Int] -> ([Int],[Int],[Int])
gpp lt = (p,a,pf)
    where
        p = [x | x <- lt,isPrime x]
        a = [x | x <- lt,isArm x]
        pf = [x | x <- lt,isPer x]
        
    

main = do 
    let a = [370,153,28,6,2,7]
    print(a)
    let (p,aa,pf) = gpp a
    putStrLn $ "ArmStrong:" ++ show aa
    putStrLn $ "Prime:" ++ show p
    putStrLn $ "Perfect Numbers:" ++ show pf