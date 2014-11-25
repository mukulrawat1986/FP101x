-- simple example of list comprehension
-- A simple list comprehension that squares a list
a = [x^2 | x <- [1..5]]

-- The expression x <- [1..5] is called a generator it states how to generate value for x
-- comprehension can also have multiple generators
-- example:
b = [(x,y) | x <- [1,3..50], y <- [2,4..50]]

c = [(x,y) | y <- [2,4..50], x <- [1,3..50]]

-- Later generators can depend on the variable that are introduced by the earlier generator
d = [(x,y) | x <- [1..3], y <- [x..3]]

-- Example of dependant generator
-- Concat function that concatenates a list of list
concat :: [[a]] -> [a]
concat xss = [x | xs <- xss, x <- xs]

-- Example of list comprehension using guards
e = [x | x <- [1..10], even x]

-- A function that maps a positive integer to its list of factors
factors :: Int -> [Int]
factors n =
  [x | x <- [1..n], n `mod` x == 0]

-- Using factors we can define a function that decides if a number is prime
prime :: Int -> Bool
prime n = factors n == [1,n]

-- Now using the previous function we can define a function that returns a list of all primes
-- upto a given limit
primes :: Int => [Int]
primes n = [x | x <- [2..n], prime x]

-- zip function maps two lists to a list of pairs of their corresponding elements
-- using zip we can define a function that returns the list of all pairs of adjacent elements from a list
pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

-- Using pairs we can define a function that decides if the elements in a list are sorted
-- and function performs the logical and over a list of boolean values
sorted :: Ord a -> [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pair xs]

-- using zip we can define a function that returns the list of all positions of a value in a list
positions :: Eq a => a -> [a] -> [Int]
positions x xs =
  [i | (x', i) <- zip xs [0..n], x == x']
    where n = length xs - 1

-- Function that counts lower case letters in a string
lowers :: String -> Int
lowers xs = length [ x | x <- xs, isLower x]
