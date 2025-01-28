--A Haskell function that searches for a number (value) in a list and displays an appropriate message. The list of numbers and the value to be searched should be read from the user.

search :: Int->[Int] -> String
search x [] = "Not found"
search x xs = do    
    if (head xs) == x 
        then "Found"
        else search x (tail xs)

main = do
    let num = [1,2,-3,4,5]
    putStrLn $ "List:" ++ show num
    print(search (3) num)