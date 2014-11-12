-- Exercise 0
-- Paranthesise the following arithmetic expression
-- 2 ^ 3 * 4
-- 2 * 3 + 4 * 5
-- 2 + 3 * 4 ^ 5
a = (2 ^ 3) * 4
b = (2 * 3) + (4 * 5)
c = 2 + (3 * (4 ^ 5))


-- Exercise 1
-- Select syntactically correct answer
n = a `div` length xs
	where a = 10
	      xs = [1,2,3,4,5]


-- Exercise 2
-- The library function last, which selects the last element of a non-empty list,
-- can be defined in terms of the library function. Choose one or more possible
-- definitions
last xs = head (drop (length xs - 1) xs)
last xs = xs !! (length xs - 1)
last xs = head (reverse xs)

-- Exercise 3
-- The library function init, which removes the last element from a non-empty list,
-- can be defined in terms of the library functions. Choose one or more possible
-- definitions
init xs = tail (reverse xs) -- though the list will be reversed
init xs = reverse (tail (reverse xs))
