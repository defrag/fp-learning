import Data.Char 
import Data.List.Split
import Data.List
import Data.Maybe

capitalizeWord :: String -> String
capitalizeWord "" = ""
capitalizeWord (x:xs) = (toUpper x) : xs

capitalizeParagraph :: String -> String 
capitalizeParagraph str = foldWithDot $ filterEmpty (tokenize str)
  where 
    foldWithDot = foldl(\a b -> a ++ b ++ ".") ""
    filterEmpty = filter (/= "")
    tokenize str' = map capitalizeWord (splitOn "." str')

-------------------------------------------------------------------------------

data DaPhone = DaPhone [Key] deriving (Show)
data Key = Key Digit String deriving (Show)
type Digit = Char
type Presses = Int 

daPhone :: DaPhone
daPhone = DaPhone [
  Key '1' "1", 
  Key '2' "abc2", 
  Key '3' "def3",
  Key '4' "ghi4", 
  Key '5' "jkl5", 
  Key '6' "mno6",
  Key '7' "pqrs7", 
  Key '8' "tuv8", 
  Key '9' "wxyz9",
  Key '*' "^", 
  Key '0' " 0", 
  Key '#' ".,"]

convo :: [String]
convo = ["Wanna play 20 questions",
         "Ya",
         "U 1st haha",
         "Lol ok. Have u ever tasted alcohol lol",
         "Lol ya",
         "Wow ur cool haha. Ur turn",
         "Ok. Do u think I am pretty Lol",
         "Lol ya",
         "Haha thanks just making sure rofl ur turn"]

cellPhonesDead :: DaPhone -> String -> [(Digit, Presses)]
cellPhonesDead phone str = concat $ map (reverseTaps phone) str

reverseTaps :: DaPhone -> Char -> [(Digit, Presses)] 
reverseTaps phone@(DaPhone _) char 
  | isUpper char = ('*', 1) : reverseTaps phone (toLower char) 
  | otherwise = [getPresses (getKey phone char)]
    where
      getPresses (Key c str) = (c, 1 + (fromJust $ elemIndex char str))

getKey :: DaPhone -> Char -> Key
getKey (DaPhone keys) char = fromJust $ find (hasChar char) keys
  where
    hasChar c (Key _ cs) = elem c cs

fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps taps = sum $ map (\t -> snd t) taps