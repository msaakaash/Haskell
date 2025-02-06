--God'z Hand
import Data.List (group)
--searching
--linearSearch
linearSearch :: Int -> [Int] -> String
linearSearch x [] = "Not Found"
linearSearch x xs = do
        if( head xs == x ) then "Found"
        else linearSearch x (tail xs)

binarySearch :: (Ord a) => a -> [a] -> Bool
binarySearch _ [] = False
binarySearch target xs
    | target == midElement = True
    | target < midElement  = binarySearch target left
    | otherwise            = binarySearch target right
  where
    midIndex   = length xs `div` 2
    midElement = xs !! midIndex
    left       = take midIndex xs
    right      = drop (midIndex + 1) xs

--smallest and largest
smallest :: Int -> [Int] -> Int
smallest x [] = x
smallest x xs = do
        let first = head xs
        if first < x then smallest first (tail xs)
        else smallest x (tail xs)


--Largest in a List
largest :: Int -> [Int] -> Int
largest x [] = x
largest x xs = do
        let first = head xs
        if first > x then largest first (tail xs)
        else largest x (tail xs)

--reverse 
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]


--sorting
mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left) (mergeSort right)
  where 
    (left,right) = splitAt (length xs `div` 2) xs
merge :: [Int] -> [Int] -> [Int]
merge ys [] = ys
merge [] xs = xs
merge (x:xs) (y:ys)
        | x<=y = x : merge xs (y:ys)
        | otherwise = y : merge (x:xs) ys


quickSort :: [Int] -> [Int]
quickSort [] =[]
quickSort (x:xs) = quickSort [y | y <- xs,y<=x] ++ [x] ++ quickSort [y | y<-xs,y>x]


--swapping every K elements
swapping :: Int -> [a] -> [a]
swapping _ [] = []
swapping k xs 
    | length xs < k = xs
    | otherwise = reverse (take k xs) ++ swapping k (drop k xs)


--grouping_prime_perfect_armstrong
isPrime :: Int -> Bool
isPrime n = null [d | d <- [2..n-1],n `mod` d == 0]
isPerfect :: Int -> Bool
isPerfect n
        | sumOfDivisors == n = True
        | otherwise = False
        where
            sumOfDivisors = sum [d | d <- [1..n-1],n `mod` d == 0]
isArmstrong :: Int -> Bool
isArmstrong n = n == sum( map (^numberOfDigits) digits)
  where
    digits = map (read . (:[])) (show n)
    numberOfDigits = length digits

grouping :: [Int] -> ([Int],[Int],[Int])
grouping lst = (p,per,ar)
  where 
    p = [ x | x <- lst,isPrime x]
    per = [ x | x <- lst,isPerfect x]
    ar = [ x | x <- lst,isArmstrong x]

--noOfOccurences
occurence :: Int -> [Int] -> Int
occurence x xs = length [ y | y<-xs , x == y]

--findAllOccurences
findAll :: [Int] -> [(Int,Int)]
findAll x = [(head g,length g) | g<-grouped]
    where
        grouped = group x

----mostFrequent
mostFrequent :: [Int] -> Int
mostFrequent x = 
      fst $ maximumBy (comparing snd) freq
    where
        grouped = group x
        freq = [(head g,length g) | g<-grouped]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True;
isPalindrome [_] = True
isPalindrome (x:xs)
    | x == last xs = isPalindrome (init xs)
    | otherwise = False

isNumberPalindrome :: Int -> Bool
isNumberPalindrome n = isPalindrome (show n)

isStringPalindrome :: String -> Bool
isStringPalindrome n = isPalindrome (show n)
main = do   
    