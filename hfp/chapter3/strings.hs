module Print3 where 

greeting :: String
greeting = "Yarrrrr"

printSecond :: IO () 
printSecond = do
  putStrLn greeting

main :: IO () 
main = do
    putStrLn greeting 
    printSecond


thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

rvrs :: String
rvrs = first ++ second ++ third
  where phrase = "Curry is awesome!" 
        first = take 7 $ drop 9 phrase
        second = take 4 $ drop 5 phrase
        third = take 5 phrase