{- examples of writing function -}

motivate :: String -> String
motivate day
  | n == 6 = "Have a nice week at work!"
  | n == 5 = "You're one day closer to weekend!"
  | n > 1 = show (n - 1) ++ " more day(s) until the weekend!"
  | otherwise = "Relax! You don't need to work today!"
  where n = distanceToSunday day

--Maybe constructors: Nothing, (Just x)
{-Maybe is a type Haskell uses to represent 
“a value might be there, or it might be missing” (so you don’t need nulls).-}

data Maybe a = Nothing | Just a

showMaybe :: Show a => Maybe a -> String
showMaybe Nothing  = "No value"
showMaybe (Just x) = "Value is: " ++ show x

case m of
  Nothing -> 0
  Just x  -> x + 1

--Either and its constructors: Left x, Right y

data Either a b = Left a | Right b


-- _ pattern
alwaysZero :: a -> Int
alwaysZero _ = 0

--zipWith (+)
Prelude> :t zipWith
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
Prelude> zipWith (+) [0,2,5] [1,3,3]
[1,5,8]

--building a list
descend 0 = []
descend n = n : descend (n-1)

--Pattern Matching for Lists
myhead :: [Int] -> Int
myhead [] = -1
myhead (first:rest) = first

mytail :: [Int] -> [Int]
mytail [] = []
mytail (first:rest) = rest

--nest patterns
sumFirstTwo :: [Integer] -> [Integer]
sumFirstTwo (a:b:_) = a+b
sumFirstTwo _ = 0

--List Comprehensions
[i | i <- [1..7], even i]
  ==> [2,4,6]


