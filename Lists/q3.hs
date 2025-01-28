box :: [[Integer]] -> String
box mybox = do 
        let total = sum[ l*b*h | [l,b,h] <- mybox]
        show(total) ++ "inA3"

main = do
    let bb = [[2,2,2],[4,4,4]]
    let s = box bb
    putStrLn $ show s