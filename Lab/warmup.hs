-- Try
-- > True || True && False
-- > not True && False
-- What does this tell you about the priorities of the operators (||) and (&&)?
-- Also, what does it tell you about the priority of function application? How
-- would you have to place parentheses in each of the two examples to get the
-- opposite result?

let x = True || True && False
-- Resuls = True

let x = not True && False
-- Result = False

-- So && has a higher priority than ||
-- not has a higer priority than &&

-- If there are no paranthesis than functions are applied based on the higher
-- priority of the operator. We can change results by adding paranthesis.

-- To get opposite reults, place the paranthesis like
let x = (True || True) && False

let y = not (True && False)


-- Strings are list of char or [Char] so all operations of lists work on strings

-- Parse errors, scoping errors and type errors are all static errors i.e. they
-- occur before the program is executed.
-- Exceptions are dynamic or run-time errors i.e. they occur when the program is
-- executed.

-- Single characters are written in single quotes, strings are list of characters
-- , but can be written shorter between double quotes.

-- > head "Hello"
-- This expression returns a Char

-- > :t length
-- returns - length :: [a] -> Int
-- 'a' is a type variable here, it means we can choose any type to take its place.

-- Types like type of length, which contains type variables, are called
-- polymorphic, because its like they have many types at a time.

-- In Haskell, functions are just values, so we can put functions into lists.

-- Type of
-- head :: [a] -> a
-- tail :: [a] -> [a]
-- reverse :: [a] -> [a]
-- null :: [a] -> Bool

-- Note: All elements of a list must be of the same type

-- Type of a empty list
-- > :t []
-- [] :: [a]

-- Every element in a list has the same type, but lists can contain arbitrary
-- many elements. Tuples in Haskell have fixed length, but elements of different
-- types can be combined.
