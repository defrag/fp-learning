myEnumFromTo :: Enum a => a -> a -> [a]
myEnumFromTo x y 
  | x' > y' = []
  | otherwise = [x] ++ myEnumFromTo (succ x) y
    where x' = fromEnum x
          y' = fromEnum y