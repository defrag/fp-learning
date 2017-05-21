myWords :: String -> [String]
myWords "" = []
myWords (' ':xs) = myWords xs
myWords str = first : myWords rest
  where 
    first = takeWhile (/= ' ') str
    rest = dropWhile (/= ' ') str