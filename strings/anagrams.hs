import Data.List (sort,nub)

anagrams :: [String] -> [[String]]
anagrams str =  nub [ [x | x <- str, sort x == sort s] | s <- str]

main :: IO()
main = do
    let str = ["eat","tea","tan","ate","nat","bat"]
    let ans = anagrams str
    putStrLn ("Anagrams:" ++  show ans)
    