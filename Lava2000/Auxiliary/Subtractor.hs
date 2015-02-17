module Subtractor where

import Lava

subtractor (carryIn, ([], []))     = ([], carryIn)
subtractor (carryIn, ([], bs))     = subtractor (carryIn, ([low],bs))
subtractor (carryIn, (as, []))     = subtractor (carryIn, (as,[low]))
subtractor (carryIn, (a:as, b:bs)) = (sub : subs, carryOut)
  where
    (sub, carry)     = fullSub (carryIn, (a, b))
    (subs, carryOut) = subtractor (carry, (as, bs))

halfSub (a, b) = (sub, carry)
  where
    sub   = xor2 (a, b)
    carry = and2 (inv a, b)

fullSub (carryIn, (a, b)) = (sub, carryOut)
  where
    (sub1, carry1) = halfSub (a, b)
    (sub,  carry2) = halfSub (sub1, carryIn)
    carryOut       = or2 (carry1, carry2)

