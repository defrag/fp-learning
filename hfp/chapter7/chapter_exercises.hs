tensDigit :: Integral a => a -> a 
tensDigit x = d
  where xLast = x `div` 10
        d = xLast `mod` 10


foldBool :: a -> a -> Bool -> a
foldBool x y z =
  case z of
    True -> x
    False -> y

foldBool' :: a -> a -> Bool -> a
foldBool' x y z
  | z == True = x
  | z == False = y

g :: (a -> b) -> (a, c) -> (b, c) 
g f (t1, t2) = (f t1, t2)


roundTrip :: (Show a, Read a) => a -> a 
roundTrip a = read(show a)

roundTrip' :: (Show a, Read a) => a -> a 
roundTrip' = read . show
