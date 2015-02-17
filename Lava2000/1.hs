import Module/Lava

halfAdd (a,b) = (sum, carry)
  where
    sum   = xor2 (a, b)
    carry = and2 (a, b)

