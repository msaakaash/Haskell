--parsingURL 
parseURL :: String -> (String,String)
parseURL = (\[protocol,domain] -> (protocol,domain)) . words . map(\c -> if c==':' then ' ' else c)

main = do 
    print(parseURL "https://google.com")