{-|
  Intermission ex:

  not:    _ :: Bool -> Bool
  length: _ :: [a] -> Int
  concat: _ :: [[a]] -> [a]
  head:   _ :: [a] -> a 
  (<):    _ :: Ord a => a -> a -> Bool
-}

{-|
  Intermission ex2
  1)
  f :: a -> a -> a -> a  
  f :: a -> (a -> (a -> a))
  x is Char 
  fx = 
  Char -> Char -> Char
  
  2) Char
  3) Num b=>b
  4) Double
  5) Char
  6) (Num a,Ord a) => a
  7) (Num a,Ord a) => a
  8) Integer
-}

{-|
  Intermission ex3
  1)
  (++) :: [a] -> [a] -> [a]
  myConcat :: [Char] -> [Char]
  myConcat x = x ++ "yo"
 
  2) (*) :: Num a => a -> a -> a
  mult :: Fractional a => a => a
  myMult x = (x/3) * 5

  3) take :: Int -> [a] -> [a]
  myTake :: Int -> Char
  myTake x = take x "hey you"

  4) (>) :: Ord a => a -> a -> Bool
  myCom:: Int -> Bool
  myCom x = x > (length [1..10])

  5) (<) :: Orda => a -> a -> Bool
  myAlphx:: Char -> Bool
  myAlphx x = x < 'z'

  Anwsers
  1) c
  2) a
  3) b
  4) c
  
  Chapter exercises

  1)
  head :: Num a => (a, [Char]) // take no args
  head [(0,"doge"),(1,"kitteh")]

  head :: (Integer, [Char])
  head [(0 :: Integer ,"doge"),(1,"kitteh")])]
  
  f :: Bool
  let f = if False then True else False

  f2 :: Int
  let f1 = length [1, 2, 3, 4, 5]

  f3 :: Bool
  let f3 = (length [1, 2, 3, 4]) > (length "TACOCAT")

  2) Num a => a
  3) Num a => a -> a
  4) Fractional a => a
  5) [Char]

  # Type signatures
  
  functionH :: [t] -> t
  functionH (x:_) = x
  
  functionC :: (Ord a) => a -> a -> Bool
  functionC x y = if (x > y) then True else False
  
  functionS :: (x, y) -> y
  functionS (x, y) = y
  
  # Given a type, write function
  i :: a -> a 
  i x = x

  c :: a -> b -> a
  c x y = x

-}

f :: a -> a -> a
f a b = a
-- or f a b = b

f2 :: a -> b -> b
f2 a b = b
