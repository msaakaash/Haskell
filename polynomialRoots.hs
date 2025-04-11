roots :: (Float,Float,Float) -> (Float,Float)
roots (a,b,c) = (x,y) 
    where
        x = e + sqrt d / 2*a 
        y = e - sqrt d / 2*a 
        d = b^2 - 4*a*c
        e = -b / 2*a

main = do
    putStr $ "The roots of polynomial are:"
    print(roots(1,-5,6))