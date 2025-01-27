isPrime :: Int -> Bool
isPrime n = null [d | d <- [2..n-1],n `mod` d == 0]

main = do
  putStr "Enter a number:"
  x <- getLine
  let n1 = read x :: Int
  if isPrime n1 then print(show n1 ++ " is a prime number")
  else print(show n1 ++ " is a not prime number")