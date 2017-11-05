data Fruit =
    Peach
  | Plum
  | Apple
  | Blackberry deriving (Eq, Show, Ord)

-- data JamJars = Jam Fruit Int deriving (Eq, Show)

data Jam
  = Jam { 
      fruit :: Fruit,
      count :: Int
  } deriving (Eq, Show)

instance Ord Jam where
  compare (Jam _ count) (Jam _ count') = compare count count'

row1 = Jam Peach 1
row2 = Jam Apple 15
row3 = Jam Peach 4
row4 = Jam Blackberry 8
row5 = Jam Peach 12
row6 = Jam Plum 3
allJam = [row1, row2, row3, row4, row5, row6]  

r1 = [Jam Peach 1, Jam Peach 5]
r2 = [Jam Apple 15, Jam Peach 5]
r3 = [Jam Peach 4, Jam Peach 5]
r4 = [Jam Blackberry 8, Jam Peach 5]
r5 = [Jam Peach 12, Jam Peach 5]
r6 = [Jam Plum 3, Jam Apple 50]
allJam2 = [r1, r2, r3, r4, r5, r6]  

totalNumberOfJars :: [Jam] -> Int
totalNumberOfJars jams = sum (map count jams)

totalNumberOfJars' :: [[Jam]] -> Int
totalNumberOfJars' jams = sum $ map count $ concat jams 

mostRow :: [Jam] -> Jam
mostRow jams = maximum jams

mostRow' :: [[Jam]] -> Jam
mostRow' jams = maximum $ concat jams