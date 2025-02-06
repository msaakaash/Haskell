--parsing date

parseDate :: String -> (String,String,String)
parseDate = (\[d,m,y] -> (d,m,y)) . words . map (\c -> if c=='/' then ' 'else c)

main = do
    print(parseDate "12/02/2024")