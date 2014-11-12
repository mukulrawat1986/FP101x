-- Find the type of the expression in the following exercises
--
-- Exercise 0
a = ['a', 'b', 'c']
-- > [Char]
--
-- Exercise 1
b = ('a', 'b', 'c')
-- > (Char, Char, Char)
--
-- Exercise 2
c = [(False, '0'), (True, '1')]
-- > [(Bool, Char)]
--
-- Exercise 3
d = ([False, True], ['0', '1'])
-- > ([Bool], [Char])
--
-- Exercise 4
e = [tail, init, reverse]
-- > [[a] -> [a]]
--
-- Exercise 5
second xs = head (tail xs)
-- > [a] -> a
--
-- Exercise 6
swap (x,y) = (y,x)
-- > (a,b) -> (b,a)
--
-- Exercise 7
pair x y = (x,y)
-- > a -> b -> (a,b)
--
-- Exercise 8
double x = x * 2
-- > Num a => a -> a
--
-- Exercise 9
palindrome xs = reverse xs == xs
-- > Eq a => [a] -> Bool
--
-- Exercise 10
twice f x = f (f x)
-- > (a -> a) -> a -> a
--
-- Exercise 11
-- Is it feasible for function types (in general) to be instances of the
-- Eq class
-- > Infesasible in general; only feasible for some functions
--
-- Exercise 12.
-- Which of the following is not a valid list in Haskell
-- > ['1', ['2', '3']]
--
-- Exercise 13
-- Which of the following is an invalid list in Haskell
-- > [1, [2,3], 4]
--
-- Exercise 14
-- The expression ["False", "True"] has type
-- > [String]
--
-- Exercise 15
-- The expression ([False, True], False) has type
-- > ([Bool], Bool)
--
-- Exercise 16
f' = ("1.2", "3.4")
-- > (String, String)
--
-- Exercise 17
g = [(1, True), (0, False)]
-- > [(Int, Bool)]
--
-- Exercise 18
f xs = take 3 (reverse xs)
-- > [a] -> [a]
--
-- Exercise 19
-- The type a -> b -> c -> d means
-- > a -> (b -> (c -> d))
--
-- Exercise 20
-- Which of the following expression has type erro
-- > [1,2,3] ++ 4

