import Data.Char (toLower,isAlpha)

c_v :: String -> ([Char],[Char])
c_v str = (vowels,consonants)
    where
        lowers = map toLower str
        vowel = "aeiou"
        consonants = [x | x <- lowers , isAlpha x,x `notElem` vowel]
        vowels = [x | x <- lowers ,x `elem` vowel]

special :: String -> ([Char],[Char],[Char])
special str = (spec,dig,alp)
    where
        digits = "0123456789"
        sp = "!@#$%^&*():."
        spec = [x | x <- str ,x `elem` sp]
        dig = [x | x <- str ,x `elem` digits]
        alp = [x | x <- str ,isAlpha x]

main = do
    putStr "Enter a string:"
    s <- getLine
    print("String:" ++ s)
    let (v,c) = c_v s
    print("Consonants:" ++ c)
    print("Vowels:" ++v)
    let (ss,dd,aa) = special s
    print("Special Characeters:"++ss)
    print("Digits:"++dd)
    print("Alphabets:"++aa)