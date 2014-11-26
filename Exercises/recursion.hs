-- Functions can be defined in terms of other functions
factorial :: Int -> Int
factorial n = product [1..n]

-- functions can be defined in terms of themselves.
-- Such functions are called recursive
factorial' :: Int -> Int
factorial' 0 = 1
factorial' n = n * factorial' (n-1)

-- Product function
product :: [Int] -> Int
product [] = 1
product (n:ns) = n * product ns

-- Length function
length :: [a] -> Int
length [] = 0
length (_:xs) = 1 + length xs

-- reverse function
reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

-- zip function
zip :: [a] -> [b] -> [(a,b)]
zip [] _  = []
zip _ [] = []
zip (x:xs) (y:ys) = (x,y): zip xs ys

-- Drop function
drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
dop n (_:xs) = drop (n-1) xs

-- Appending two lists
(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) ++ ys = x: (xs ++ ys)

-- Quicksort implementation
qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) =
  qsort smaller ++ [x] ++ qsort larger
    where
      smaller = [a | a <- xs. a <=x]
      larger  =  [b | b <-xs, b >x]

-- Produce a list with n identical elements
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' x y = [y] ++ replicate' (x-1) y

-- select the nth element of a list
(!!) :: [a] -> Int -> a
(x:_) !! 0 = x
(_:xs) !! n = xs !! (n-1)

-- Decide if a value is an element of a list
elem' :: Eq a -> a -> [a] -> Bool
elem' [] _ = False
elem' (x:xs) n =
  | x == n = True
  | otherwise = elem' xs n

