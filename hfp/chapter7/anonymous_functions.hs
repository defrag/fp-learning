addOneIfOdd n = case odd n of 
  True -> f n
  False -> n 
  where f n = n+1

addOneIfOddLambda n = case odd n of 
  True -> (\a -> a + 1) n
  False -> n 

addFive x y = (if x > y then y else x) + 5 
addFiveLb = \x -> \y -> (if x > y then y else x) + 5 

mflip f = \x -> \y -> f y x
mflipNoLb f y x = f y x