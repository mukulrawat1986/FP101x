-- Exercise 0
-- halves split an even length list into two halves
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

halve' :: [a] -> ([a], [a])
halve' xs = (take (n `div` 2) xs, drp[ (n `div` 2) xs)
  where n = length xs

halve'' :: [a] -> ([a], [a])
halve'' xs = splitAt (div (length xs) 2) xs

halve''' :: [a] -> ([a], [a])
halve''' cs = (take n xs, drop n xs)
  where n = length xs `div` 2

-- Exercise 1
-- safetail behaves as tail, except that safetail maps the empty list to itself, whereas tail produces an error
safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

safetail'' :: [a] -> [a]
safetail' [] = []
safetail' (_:xs) = xs

safetail'' xs
  | null xs = []
  | otherwise = tail xs

safetail''' [] = []
safetail''' xs = tail xs

safetail'''' = \xs -> case xs of
                           [] -> []
                           (_:xs) -> xs

-- Exercise 2
-- function definitions for the logical disjunction operator ||

-- since || operator is already defined in the Prelude, we have to hide the default implementation in order to
-- test the following code
import Prelude hiding ((||))

False || False = False
_ || _ = True

-- because of multiple implementaions, I am writing rest implementations in the comments
-- False || b = b
-- True || _ = True
--
-- b || c
--  | b == c = b
--  | otherwise = True
--
--  b || False = b
--  _ || True = True
--
--  b || c
--    | b == c = c
--    |otherwise = True
--
-- False || False = False
-- False || True = True
-- True || True = True
-- True || False = True


-- Exercise 3
-- Function definitions for the logical conjunction operator &&

-- since && operator is already defined in the Prelude, we have to hide the defualt implementation in order to
-- test the following code
import Prelude hiding ((&&))

True && True = True
_ && _ = False


-- rest all implementations are in the comments
-- a && b = if a then if b then True else False else False
--
-- a && b = if a then b else False
--
-- a && b = if b then a else False


-- Exercise 4
-- show how the curried function definition mult x y z = x * y * z in terms of lambda expression
mult :: Int -> (Int -> (Int -> Int))
mult = \x -> (\y -> (\z -> x*y*z))

-- Exercise 5
-- The expression f x g y means
-- Answer -> ((f x) g) y
-- Reasoning : Function application associates to the left, while arrow associates to the right when currying

-- Exercise 6
-- The type signature f :: ( a -> a) -> a indicates that the function f:
-- Answer: Takes a function as an argument
-- Reasoning : Same as above

-- Exercise 7
-- Correct implementation for the function remove :: Int -> [a] -> [a] which takes a number n and a list and removes the element
-- at position n from the list
-- For example: remove 0 [1,2,3,4] = [2,3,4]
-- Answer:
remove :: Int -> [a] -> [a]
remove n xs = take n xs ++ drop (n+1) xs

-- Exercise 8
-- What is the output of the function call funct 3 [1,2,3,4,5,6,7]
-- The function is defined as
funct :: Int -> [a] -> [a]
funct x xs = take (x+1) xs ++ drop x xs

-- Answer: [1,2,3,4,4,5,6,7]

