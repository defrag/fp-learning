data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah

awesome = ["Papuchon", "curry", "Haskell"]

lt :: [[a]] -> Int
lt x = length x

--- 6 / length [1, 2, 3]
--- div 6 $ length [1, 2, 3]

isPalindrome :: (Eq a) => [a] -> Bool 
isPalindrome x = x == reverse x

---

myAbs :: Integer -> Integer 
myAbs x = if x >= 0 then x else negate x

---

f :: (a,b) -> (c,d) -> ((b,d),(a,c))
f t1 t2 = (p1, p2)
    where p1 = (snd t1, snd t2)
          p2 = (fst t1, fst t2)

---
x = (+)
ff xs = x w 1
  where w = length xs