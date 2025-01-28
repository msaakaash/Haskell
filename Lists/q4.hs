percentWeight :: [Float] -> [String]
percentWeight per = do 
        let total = sum per
        [show((x/total)*100)++"%" |x<-per]

main = do
    let percentages = [12, 24, 36,48]
    let ans = percentWeight percentages;
    putStrLn $ show ans;