sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

piSquare x = (x * x) * 3.14

f = x * 3 + y 
  where x = 3 
        y = 1000 

--- let y=10; x= 10*5+ y in x*5        

f2 = x * 5
  where y = 10
        x = 10 * 5 + y

---  let x=7; y=negate x; z = y*10 in z / x + y
f3 = z / x + y
  where x = 7
        y = negate x
        z = y * 10

--- 
--- z=7 x=y^2 waxOn=x*5 y=z+8
--- z = 7
--- y = 15
--- x = 900
--- waxon = (7+8) ^ 2 * 5
--- waxon = (15) ^ 2 * 5
--- waxon = 225 * 5

waxOn = x * 5 
  where
        z = 7 
        y = z + 8
        x = y ^ 2

triple x = x * 3

waxOff x = triple x