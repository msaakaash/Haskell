averageMarks :: [Double] -> Double
averageMarks list1 = do 
        let total = sum list1
        let len = fromIntegral (length list1)
        total/(len)

noOfAverage2 :: [Double] -> Int
noOfAverage2 list1 = length (filter (<averageMarks list1) list1) 

main = do 
    let l = [32.2,34,24,40,29]
    let av = averageMarks l 
    putStrLn $ "Class Avergage :" ++ show av
    let count = noOfAverage2 l
    if count>2 then putStrLn "Need to improve"
    else putStrLn "Good"