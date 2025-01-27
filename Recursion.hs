--Recursion
--1_sumofList
sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

--2_factorial
fact :: Int -> Int
fact 0 = 1
fact n = n * fact(n-1)

--3_fibonacci
fibo :: Int -> Int
fibo 0 = 1
fibo 1 = 1
fibo n = fibo(n-1) + fibo(n-2)

--4_Length
le :: [a] -> Int
le [] = 0
le (_:xs) = 1 + le xs

--5_Reverse
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]

--6_Check_for_Palindrome_list
palin :: Eq a => [a] -> Bool
palin [] = True
palin [_] = True
palin (x:xs)
    | x == last xs = palin (init xs)
    | otherwise = False

--7_maxi
maxs :: Ord a => [a]->a
maxs [x] = x
maxs (x:xs) = max x (maxs xs)

--8_replicate
rep :: Int -> a -> [a]
rep 0 _ = []
rep n x = x : rep (n-1) x

--9_Tower_Of_Hanoi
--will be updated

main = do
  print(sumList [1,2,3,4,5])
  print(fact 5)
  print(fibo 5)
  print(le [1,2])
  print(rev [5,4,3,2,1])
  print(palin [5,3,2,5])
  print(maxs [1,2])
  print(rep 5 'a')