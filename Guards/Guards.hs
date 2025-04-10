--1_finding absolute values
absolute :: Int -> Int
absolute x
    | x<0 = -x
    | otherwise = x

--2_grading sysytem 
grade :: Int -> String
grade score
    | score >= 90 = "A"
    | score >=80 = "B"
    | score >=70 = "C"
    | score >=60 = "D"
    | otherwise = "F"

--3_maximum of two numbers
maxOfTwo :: Int -> Int -> Int
maxOfTwo a b 
  | a>b = a 
  | otherwise = b

--4_fizzBuzz :: Int -> String
fizzBuzz n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n

--5_bmiCategory
bmiCategory :: Double -> Double -> String
bmiCategory w h 
  | bmi <= 18.5 = "Underweight"
  | bmi <= 25.0 = "Normal"
  | bmi <=30 = "Overweight"
  | otherwise = "Obese"
  where 
    bmi = w / (h ^ 2)

--6_Triangle Type
triangle :: Double -> Double -> Double -> String
triangle a b c
  | (a+b)<=c || (a+c)<=b || (b+c)<=a = "Not a Triangle"
  | a == b && b == c = "Equilateral"
  | a==b || b ==c || a==c = "Isoceles"
  | otherwise = "Scalene"

--7_Leap
isLeap :: Int -> Bool
isLeap year
  | year `mod` 400 == 0 = True
  | year `mod` 100 ==0 = False
  | year `mod` 4 == 0  = True
  | otherwise = False

--8_classify
classify :: Int -> String
classify n
  | n <=1 = "neither a prime number nor a composite number"
  | isPrime n = "Prime"
  | sumOfDivisors == n = "Perfect"
  | sumOfDivisors > n = "Abundant"
  | otherwise = "Deficient"
  where
    sumOfDivisors = sum[d | d <- [1..n-1],n `mod` d==0]
    isPrime x = null [d | d <- [2..x-1],x `mod` d == 0]

--9_checkingPassword 
password :: String -> String
password pwd 
  | length pwd < 8 = "Weak"
  | all (`elem` ['a'..'z']) pwd = "Moderate"
  | any (`elem` ['0'..'9']) pwd && hasSpecialChar pwd = "Strong"
  | otherwise = "Moderate"
  where 
    hasSpecialChar str = any(`elem` "!@#$%^&*()") str

--10_class
classs :: Int -> String
classs n
  | n < 0 = "Negative"
  | n == 0 = "Zero"
  | n `mod` 2 == 0 = "even"
  | isPrime n = "Prime"
  | otherwise = "odd"
  where
    isPrime x = null [d |d <- [2..x-1],x `mod` d == 0]
main = do
    print(absolute (-5))
    print(grade (95))
    print(maxOfTwo 5 7)
    print(fizzBuzz 5)
    print(bmiCategory 65 180)
    print(triangle 1 1 1.414)
    print(isLeap 2009)
    print(classify 29)
    print(password "Aakaash@14")
    print(classs (23))