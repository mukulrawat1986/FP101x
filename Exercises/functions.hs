-- Example of function
-- abs takes integer n and returns n if its non-negative and -n otherwise
abs :: Int -> Int
abs n = if n >=0 then n else -n

-- conditional expressions can be nested
signum :: Int -> Int
signum n = if n < 0 then -1 else
              if n == 0 then 0 else 1

-- functions can also be defined using guarded equations
abs' :: Int -> Int
abs' n | n >= 0     = n
       | otherwise = -n

--functions with multiple conditions are easier to read using guards
signum' :: Int -> Int
signum' n | n < 0     = -1
          | n == 0     =  0
          | otherwise = -1

-- Example of pattern matching on the argument
not :: Bool -> Bool
not False = True
not True = False

-- Another example of pattern matching
(&&) :: Bool -> Bool -> Bool
True && b = b
False && _ = False

-- Functions on list can be defined using x:xs patterns
head' :: [a] -> a
head' (x: _) = x

tail' :: [a] -> [a]
tail' (_: xs) = xs

-- Example of lambda expression
-- Giving formal meaning to functions defined using currying
-- add' is a function that takes a parameter and returns a function that takes a paramaeter
-- and returns the sum of the two parameters
add' :: Int -> Int -> Int
add' = \x -> (\y -> x + y) -- alternatively add' x = (\y -> x+y)

-- Lambda expressions are also useful when defining functions that return functions as a result
const :: a -> b -> a
const x _ = x

const' :: a -> (b -> a)
const' = \x -> (\_ -> x) -- alternatively const' x = \_ -> x

-- lambda expressions can also be used to avoid naming functions that are only referenced once
odds n = map f [0..n-1]
         where
           f x = x*2 + 1

odds' n = map (\x -> x*2 + 1) [0..n-1]




