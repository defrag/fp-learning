import Data.Char 
import Data.List.Split

capitalizeWord :: String -> String
capitalizeWord "" = ""
capitalizeWord (x:xs) = (toUpper x) : xs

capitalizeParagraph :: String -> String 
capitalizeParagraph str = foldWithDot $ filterEmpty (tokenize str)
  where 
    foldWithDot = foldl(\a b -> a ++ b ++ ".") ""
    filterEmpty = filter (/= "")
    tokenize str' = map capitalizeWord (splitOn "." str')