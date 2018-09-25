-- Alonzo Church encodings used to build up more complex operations

-- Identity
i = \a -> a

-- Add Curried function notation
add = \a -> \b -> a + b

-- Mockingbird
m = \f -> \f -> f

-- Kestral.  Takes two arguments (a, b) and returns the first a.
k = \a -> \b -> a

-- Kite.  Takes two arguments (a, b) and returns the second b.  flip in Haskell
ki = \a -> \b -> b

-- Cardinal. Reverses areguments a, b to b, a
c = \f -> \a -> \b -> f b a

--  Boolean types in Lambda caclulus
true = k
false = ki
 
