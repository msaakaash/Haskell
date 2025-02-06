--Replicating a digit n times

replic :: (Num i,Ord i) => i -> a -> [a]
replic 0 _ = []
replic i x = x:replic (i-1) x


main = do 
    let a = replic 5 3
    print(a)