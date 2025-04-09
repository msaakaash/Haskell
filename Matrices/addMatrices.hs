addMatrices :: [[Int]] -> [[Int]] -> [[Int]]
addMatrices = zipWith (zipWith (+))


