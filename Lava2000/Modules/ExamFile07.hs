import Lava
import List
import Patterns
import ExamDraw07


infix 4 *>*
infix 4 *>>*



-- composing two prefix networks (variant one)

(p1 *>* p2) as    = (init l1s) ++ r1s
  where
    (ls,rs) = splitAt t as
    l1s     = p1 ls
    r1s     = p2 ((last l1s): rs)
    t       = div (length as+1) 2



-- dop takes the operator and the buffer and makes a 2-list to 2-list function
-- This will be what we will use as a prefix network when we have two inputs

dop (op,buf) [a,b] = [buf a, op(a,b)]

-- defining the serial network using composition (*>*). Note the use of dop.

sser _ [a]   = [a]
sser bs [a,b] = dop bs [a,b]
sser bs as    = (sser bs *>* sser bs) as



-- the fan pattern for making an n+1 input  prefix network out an n input one
-- here, p is the smaller network

sfan p (op,buf) (a:as) = buf a:[op(a,b) | b <- p as]



-- Finally, we define Sklansky using composition and fan

sskl _ [a] = [a]
sskl bs as = (sskl bs *>* sfan (sskl bs) bs) as






-- Now for another variant (using fancier higher order functions)
-- Can be ignored if you are not a Haskell fan

(p1 *>>* p2) bs as    = (init l1s) ++ r1s
  where
    (ls,rs) = splitAt t as
    l1s     = p1 bs ls
    r1s     = p2 bs ((last l1s): rs)
    t       = div (length as+1) 2


ser _  [a]    = [a]
ser bs [a,b]  = dop bs [a,b]
ser bs as     = (ser *>>* ser) bs as

fan p (op,buf) (a:as) = buf a:[op(a,b) | b <- p (op,buf) as]

skl _ [a] = [a]
skl bs as  = (skl *>>* fan skl) bs as


{--
to draw pictures:
Main> drawpat "skl" skl 32


produces the file skl32.fig in your current directory
--}

check func m 
  = and (zipWith (==) outs (tail (inits l))) && length outs == length l
  where l = [1..m]
        outs = func (append,id) [[a]| a <- l]









