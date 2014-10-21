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
