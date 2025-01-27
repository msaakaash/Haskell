--map
double :: Int -> Int
double x = x*2

--filter
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

main = do 
  print(map double [1,2,3,4])
  print(filter isEven [1,2,3,4])


