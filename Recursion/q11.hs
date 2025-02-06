--take function
tak :: (Num i,Ord i) => i -> [a] -> [a]
tak _ [] = []
tak i (x:xs)
    | i <= 0 = []
    |otherwise = x : tak (i-1) xs

main = do 
    let a = tak 3 [1,2,3,4,5,6]
    print(a)