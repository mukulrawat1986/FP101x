-- Exercise 0
-- What is the type of the following expression
-- e0 = [False, True, False, True]
-- Ans: [Bool]

-- Exercise 1
-- Choose all the possible types of the following definition
-- e1 = [[1,2], [3,4]]
-- Ans: 1. [[Integer]]
--      2. [[Int]]
--      3. Num t => [[t]]

-- Exercise 2
-- Choose all possible types of the following definition:
-- e2 = [[[1,2,3,]], [[3,4,5]]]
-- Answer: 1. [[[Integer]]]
--         2. [[[Int]]]
--         3. Num t => [[[t]]]

-- Exercise 3
-- What is the type of the following definition
-- e3 x = x * 2
-- Answer: Num a => a -> a

-- Exercise 4
-- What is the type of the following definition
-- e4 (x,y) = x
-- Answer: (a,b) -> a

-- Exercise 5
-- What is the type of the following definition:
-- e5 (x,y,z) = z
-- Answer: (a,b,c) -> c

-- Exercise 6
-- What is the type of the following
-- e6 x y = x * y
-- Answer: Num a => a -> a -> a

-- Exercise 7
-- What is the type of the following definition
-- e7 (x,y) = (y,x)
-- Answer: (a,b) -> (b,a)

-- Exercise 8
-- What is the type of the following defintion
-- e8 x y = (y,x)
-- Answer: a -> b -> (b,a)

-- Exercise 9
-- What is the type of the following definition
-- e9 [x, y] = (x, True)
-- Answer: [t] -> (t, Bool)
-- Reasoning: A list can have only one type of elements in it. Hence, x & y must have same type

-- Exercise 10
-- What is the type of the following definition
-- e10 (x,y) = [x,y]
-- Answer: (t,t) -> [t]
-- Reasoning: A list can only have one type, so x & y must have the same type hence using t

-- Exercise 11
-- Choose a suitable definition for the following type
-- e11 :: (Char, Bool)
-- Answer: e11 = ('\a', True)

-- Exercise 12
-- Choose a suitable definition for the following type
-- e12 :: [(Char, Int)]
-- Answer: e12 = [('a', 1)]

-- Exercise 13
-- Choose a suitable definition for the following type
-- e13 :: Int -> Int -> Int
-- Answer: e13 x y = x + y * y

-- Exercise 14
-- Choose a suitable definition for the following type
-- e14 :: ([Char], [Float])
-- Answer: e14 = ("Haskell", [3.1, 3.14, 3.141, 3.1415])

-- Exercise 15
-- Choose a suitable definition for the following type
-- e15 :: [a] -> [b] -> (a,b)
-- Answer: e15 xs ys = (head xs, head ys)
