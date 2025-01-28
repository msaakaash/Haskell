--A Haskell function that reads a list and displays the element that comes in the list after a number entered by the user.

--A Haskell function that searches for a number (value) in a list and displays an appropriate message. The list of numbers and the value to be searched should be read from the user.

search :: Int->[Int] -> [Int]
search x [] = []
search x xs = do    
    if (head xs) == x 
        then x : tail xs
        else search x (tail xs)

main = do
    let num = [1,2,-3,4,5]
    putStrLn $ "List:" ++ show num
    print(search (-3) num)