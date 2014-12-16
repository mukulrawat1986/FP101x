-- example of higher order function
-- function twice applied the function f twice two times on an argument
twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- map function definition
--
-- using list comprehension
map' :: (a -> b) -> [a] -> [b]
map' f xs = [f x | x <- xs]
--
-- using recursion
map'' :: (a -> b) -> [a] -> [b]
map'' f [] = []
map'' f (x:xs) = f x: map'' f xs

-- filter function definition
--
-- using list comprehension
filter' :: (a -> Bool) -> [a] -> [a]
filter' p xs = [x | x <- xs, p x]
--
-- using recursion
filter'' :: (a -> Bool) -> [a] -> [a]
filter'' p [] = []
filter'' p xs
  | p x = x: filter p xs
  | otherwise = filter p xs

-- recursive definition of foldr
foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f v [] = v
foldr' f v (x:xs) = f x (foldr' f v xs)

-- define sum, product, or and functions using foldr
sum' = foldr' (+) 0
product' = foldr' (*) 1
or' = foldr' (||) False
and' = foldr' (&&) True

-- recursive definition of length
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

-- definition of length using foldr
length'' :: [a] -> Int
length'' = foldr' (\_ n -> 1 + n) 0

-- recursive definition of reverse
reverse' :: [a] -> [b]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- definition of reverse using foldr
reverse'' :: [a] -> [b]
reverse'' = foldr' (\x xs -> xs ++ [x]) []

-- defintion of all
all' :: (a -> Bool) -> [a] -> Bool
all' p xs = and [p x | x <- xs]

-- definition of any
any' :: (a -> Bool) -> [a] -> Bool
any' p xs = or [p x | x <- xs]

-- definition of takeWHile
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' p [] = []
takeWhile' p (x:xs)
  | p x = x: takeWhile' xs
  | otherwise = []

-- definition of dropWhile
dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' p [] = []
dropWhile' p (x:xs)
  | p x = dropWhile' xs
  | otherwise = x:xs



