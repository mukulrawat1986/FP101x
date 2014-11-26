-- Exercise 0
-- Choose all correct definitions of the exponentiation operator *
-- for non-negative integers, including 0
-- Answer : m ^ 0 = 1
--          m ^ n = m* m ^ (n - 1)
--
--          m ^ 0 = 1
--          m ^ n = m * (^) m (n-1)

-- Exercise 1
-- Using the following definition show how length [1,2,3] is evaluated
length :: [a] -> Int
length [] = 0
length (_ : xs)  = 1 + length xs
--
-- Answer: length [1,2,3]
--        = { applying length }
--        1 + length [2,3]
--        = { applying length }
--        1 + (1 + length [3])
--        = { applying length }
--        1 + (1 + (1 + length []))
--        = { applying length }
--        1 + (1 + (1 + 0))
--        = { applying + }
--        1 + (1 + 1)
--        = { applying + }
--        1 + 2
--        = { applying + }
--        3

-- Exercise 2
-- Using the following definition show how drop 3 [1,2,3,4,5] is evaluated
drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop n [] = []
drop n (_ : xs) = drop (n-1) xs
--
-- Answer : drop 3 [1,2,3,4,5]
--          = { applying drop }
--          drop 2 [2,3,4,5]
--          = { applying drop }
--          drop 1 [3,4,5]
--          = { appying drop }
--          drop 0 [4,5]
--          = { applying drop }
--          [4,5]
--
-- Exercise 3
-- Using the following definition show how init [1,2,3] is evaluated
init :: [a] -> [a]
init [_] = []
init (x:xs) = x: init xs
--
-- Answer : init [1,2,3]
--          = { applying init }
--          1: init [2,3]
--          = { applying init }
--          1: 2: init [3]
--          = { applying init }
--          1: 2: []
--          = { list notation }
--          [1,2]
--
-- Exercise 4
-- Choose the correct definitions for the function that decides if all logical values in a list are True
-- Answer:
-- and [] = True
-- and (b:bs) = b && and bs
--
-- and [] = True
-- and (b:bs) =
  -- | b = and bs
  -- | otherwise = False
--
-- and [] = True
-- and (b:bs) =
  -- | b == False = False
  -- | otherwise = and b
--
-- and [] = True
-- and (b:bs) = and bs && b
--
-- Exercise 5
-- Choose the correct definition of the function that concatenates a list of lists
concatenates :: [[a]] -> [a]
concatenates [] = []
concatenates (xs:xss) = xs ++ concatenates xss
--
-- Exercise 6
-- Choose the correct definition for the function that produces a list with n identical elements
replicates :: Int -> a -> [a]
replicates 0 _ = []
replicates n x = x : replicates (n-1) x
--
-- Exercise 7
-- Choose the correct definition for the function that selects the nth element of a list
-- Counting starts at 0
(!!) :: [a] -> Int -> a
(x:_) !! 0 = x
(_: xs) !! n = xs !! (n-1)
--
-- Exercise 8
-- Choose the correct definition for the function that decides if a value is an element of a list
elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem x (y: ys) =
  | x == y = True
  | otherwise = elem x ys
--
-- Exercise 9
-- Choose the correct definition for the function that merges two sorted lists in ascending order to give
-- a single sorted list in ascending order
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) = if x <= y then x: merge xs (y:ys) else y : merge (x:xs) ys
--
-- Exercise 10
-- Choose the correct definition for the function msort, that implements merge sort, in which the empty list
-- and singleton list are already sorted, and any other list is sorted by mergin together the two lists that
-- result from sorting the two halves of the list separately. The solutions can use the function merge from
-- the previous exercises and the function halves that split a list nto two halves who length differ by at
-- most one
merge :: Ord a -> [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = if x <= y the x: merge xs (y:ys) else y : merge (x:xs) ys

halves :: [a] -> ([a] , [a])
halves xs = splitAt (length xs `div` 2) xs

msort :: Ord a => [a] -> [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
  where (ys, zs) = halves xs


