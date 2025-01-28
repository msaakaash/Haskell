startEnd :: [a] -> (a,a)
startEnd ds = (last ds,head ds)

main = do
    let s = "msaakaash"
    let l  = [1,2,3,4,5]
    let ss = startEnd s
    let ll = startEnd l
    putStrLn $ "Last and first element of " ++ show s ++ " is:"++show ss
    putStrLn $ "Last and first element of " ++ show l ++ " is:"++show ll
    