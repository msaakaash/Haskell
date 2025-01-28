--GCD recursive

gcdRecursive :: Int -> Int -> Int
gcdRecursive a 0 = a
gcdRecursive a b = gcdRecursive b (a `mod` b)

main :: IO ()
main = do
    let num1 = 56
    let num2 = 98
    putStrLn $ "GCD of " ++ show num1 ++ " and " ++ show num2 ++ " is: " ++ show (gcdRecursive num1 num2)