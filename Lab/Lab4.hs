
module Lab4 where

------------------------------------------------------------------------------------------------------------------------------
-- RECURSIVE FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------

import Data.Char

-- ===================================
-- Ex. 0
-- ===================================

triangle :: Integer -> Integer
triangle 0 = 0
triangle n = n + triangle (n-1)
-- ===================================
-- Ex. 1
-- ===================================

count :: Eq a => a -> [a] -> Int
count a [] = 0
count a (x:xs)
  | a == x = 1 + count a xs
  | otherwise = 0 + count a xs

xs = [1,2,35,2,3,4,8,2,9,0,5,2,8,4,9,1,9,7,3,9,2,0,5,2,7,6,92,8,3,6,1,9,2,4,8,7,1,2,8,0,4,5,2,3,6,2,3,9,8,4,7,1,4,0,1,8,4,1,2,4,56,7,2,98,3,5,28,4,0,12,4,6,8,1,9,4,8,62,3,71,0,3,8,10,2,4,7,12,9,0,3,47,1,0,23,4,8,1,20,5,7,29,3,5,68,23,5,6,3,4,98,1,0,2,3,8,1]
ys = map (\x -> ((x + 1) * 3) ^ 3 - 7) xs

poem = [ "Three Types for the Lisp-kings under the parentheses,"
       , "Seven for the Web-lords in their halls of XML,"
       , "Nine for C Developers doomed to segfault,"
       , "One for the Dark Lord on his dark throne"
       , "In the Land of Haskell where the Monads lie."
       , "One Type to rule them all, One Type to find them,"
       , "One Type to bring them all and in the Lambda >>= them"
       , "In the Land of Haskell where the Monads lie."
       ]

-- ===================================
-- Ex. 2
-- ===================================

euclid :: (Int,  Int) -> Int
euclid (x, y)
  | x == y = x
  | x > y = euclid (x-y, y)
  | otherwise = euclid (x, y-x)


-- ===================================
-- Ex. 3
-- ===================================

funkyMap :: (a -> b) -> (a -> b) -> [a] -> [b]
funkyMap _ _ []  = []
funkyMap f g (x:y:xs) = f x : g y : funkyMap f g xs
funkyMap f g (x:xs) = f x : funkyMap f g xs


-- Exercise 8
-- What is the type of \a -> a
-- Ans : a -> a

-- Exercise 9
-- What is the type of [undefined]
-- Ans: [a]

-- Exercise 10
-- What is the type of (True, (False))
-- Ans: (Bool, (Bool))

-- Exercise 11
-- What is the type of f a = \b -> (b,a)
-- Ans: t42 -> t4711 -> (t4711, t42)

-- Exercise 12
-- What is the type of foldr id
-- Ans: (a -> ([a -> a]) -> a))

-- Exercise 13
-- What is the type of flip foldr const
-- Ans: (a -> (c -> (b -> c)) -> c -> (b -> c)) -> [a] -> c -> (b -> c)

-- Exercise 14
-- Define dup a = (a,a)
-- What is the type of dup . dup . dup
-- Ans: (a) -> ((((a), (a)), ((a), (a))), (((a), (a)), ((a), (a))))

-- Exercise 15
-- Define h g f = (f.g) $ f
-- Ans: ((a->b)->a) -> ((a->b)->b)

-- Exercise 16
-- Given the function h defined in the previous question
-- define function fix = h fix
-- What is the type of fix
-- Ans: (a -> a) -> a

-- Exercise 17
-- Select all properties of the fix function
-- Ans: fix is a higher order function
--      fix is a polymorphic function
--      fix is a recursive function
-- Note: Not a overloaded function since it does not conatian one or more class constraints

-- Exercise 18
-- What is the type of f = \f n -> if (n == 0) then 1 else n*f(n-1)
-- Ans: (Eq a, Num a) => (a->a) -> a -> a

-- Exercise 19
-- let k = fix $ f
-- what is the value of k 42
-- ans: 1405006117752879898543142606244511569936384000000000


-- Exercise 20
-- What properties does k satisfy?
-- Ans: Polymorphic
--      Overloaded
