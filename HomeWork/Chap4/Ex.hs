-- Exercise 0
-- Which of these expressions calculates the sum: 1^2 + 2^2 + .. + 100^2
-- of the first one hundred integer squares
sum100 = sum [x^2 | x <-[1..100]]

-- Exercise 1
-- The library function replicate :: Int -> a -> [a]  produces a list of identical elements
-- Choose one possible implementation for this function
replicate :: Int -> a -> [a]
replicate n a = [a | _ <- [1..n]]

-- Exercise 2
-- A triple (x,y,z) of positive integers is pythagorean if x^2 + y^2 = z^2
-- Choose the correct implementation for the function pyths :: Int -> [(Int, Int, Int)]
-- that returns the list of all pythagorean triples whose components are at most a givn limit
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- Exercise 3
-- A positive integer is perfect if it equals the sum of its factors, excluding the number itself.
-- Choose the correct definition of the function perfects :: Int -> [Int] that returns the list
-- of all perfect numbers up to a given limit.
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], isPerfect x]
  where isPerfect num = sum(init (factors num)) == num

-- Exercise 4
-- The following list comprehension
-- [(x,y) | x <- [1,2,3], y <- [4,5,6]]
-- can be re-expressed using two or more comprehensions with single generators.
-- Choose the correct implementation
ex4 = concat [[ (x,y) | y <- [4,5,6]] | x <- [1,2,3]]

-- Exercise 5
-- Redefine the function positions discusse in the lecture using the function fin
find :: (Eq a) => a -> [(a,b)] -> [b]
find k t = [v | (k', v)  <- t, k == k']

positions :: (Eq a) => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..n])
  where n = length xs - 1

-- Exercise 6
-- The scalar product of two lists of integers xs and ys of length n is given by the
-- sum of the products of corresponding integers
-- sum (xs || i) * (ys || i) ) for i = 0 to n-1
-- Choose the correct definition of scalarproduct
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x,y) <- xs `zip` ys]

-- Exercise 8
-- Evaluate
ex8 = [(x,y) | x <- [1,2], y<-[1,2]]

-- Exercise 9
-- Evaluate
ex9 = [x | x<- [1,2,3], y <- [1..x]]

-- Exercise 10
-- Evaluate
ex10 = sum [x | x <- [1..10], even x]

-- Exercise 11
-- Evaluate
xs = 1: [x+1 | x <- xs]

-- Exercise 12
-- Choose the correct definition of the function riffle that takes two lists of same length
-- and interleaves their element in turn about order
riffle :: [a] -> [a] -> [a]
riffle xs ys = concat [[x,y] | (x,y) <- xs `zip` ys]

-- Exercise 13
-- Choose the correct definition for the function divisor. that returns the divisor of a natural number
divides :: Int -> Int -> Bool
divides x y | x `mod` y == 0 = True
            | otherwise = False

divisor :: Int -> [Int]
divisor x = [d | d <- [1..x], x `divides` d]


