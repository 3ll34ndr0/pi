import Lava
import VhdlNew

infixr 5 ->-
infixr 4 -|-

halfAdd (a, b) = (sum, carry)
	where
	    sum = xor2 (a, b)
	    carry = and2 (a, b)

fullAdd (carryIn, (a, b)) = (sum, carryOut)
    where
       (sum1,carry1) = halfAdd (a, b)
       (sum, carry2) = halfAdd (carryIn, sum1)
       carryOut = xor2 (carry2, carry1)

test1 = simulate halfAdd (low, low)
test2 = simulate fullAdd (low, (high, low))
test3 = simulate fullAdd (high,(low,high))
test4 n = writeVhdlInputOutput "adder" adder 
         (var "cin", (varList n "a", varList n "b"))
         (varList n "sum", var "cout")
test5 n = writeVhdlInputOutputNoClk "adderNoClk" adder 
         (var "cin", (varList n "a", varList n "b"))
         (varList n "sum", var "cout")

test6 = writeVhdlInputOutputNoClk "fullAddNewie" fullAdd 
          (var "cin",(var "a", var "b"))
	  (var "sum", var "cout")

test7 = writeVhdlInputOutputNoClk "sklansky" sklansky
	  (var "a", var"b")
	  (var "sum", var "cout")

testadder' n = writeVhdlInputOutput "adder2" adder'
	        (var "cin", [(var "a", var "b")])
                (varList n "sum", var "cout")


-- 2.5 Exercises
swap :: (Signal Bool, Signal Bool) -> (Signal Bool, Signal Bool)
swap (a, b) = (b ,a)

-- 
copy :: (Signal Bool) -> (Signal Bool, Signal Bool)
copy a = (a, a)

--
twoBitSorter (a,b) = (smaller, bigger)
	where 
	   smaller = and2 (a, b)
	   bigger = or2 (a, b) 

--
alwaysHigh () = high

--
--multiplexer :: (Signal Bool,(Signal Bool,Signal Bool)) -> Signal Bool 
multiplexer (a, (x,y)) = or2 (out1, out2)
   where
       out2 = and2 (a, y)
       out1 = and2 (inv (a), x)

--
inverter (a) = inv (a)

--
sum3Bit (cin, ((a0, a1, a2), (b0, b1, b2))) = ((sum0,sum1,sum2), cOut)
  where
     (sum0, carryOut0) = fullAdd (cin, (a0,b0))
     (sum1, carryOut1) = fullAdd (carryOut0, (a1,b1))
     (sum2, cOut)      = fullAdd (carryOut1, (a2,b2))

--
bitAdder (carryIn, []) = ([], carryIn)

bitAdder (carryIn,a:as) = (sum:sums, carryOut)
   where
      (sum, carry) = halfAdd (a, carryIn)
      (sums, carryOut) = bitAdder (carry, as)
     
--
adder (carryIn, ([], [])) = ([], carryIn)

adder (carryIn, (a:as, b:bs)) = (sum:sums, carryOut)
   where
      (sum, carry) = fullAdd (carryIn,(a,b))
      (sums, carryOut) = adder (carry, (as, bs))

-- Conection patterns
--
row circ (carryIn, []) = ([], carryIn)

row circ (carryIn, a:as) = (b:bs, carryOut)
   where
      (b, carry)     = circ (carryIn, a)
      (bs, carryOut) = row circ (carry, as)

--
bitAdder' (carry, inps) = row halfAdd (carry, inps)

--
adder' (carry, inps) = row fullAdd (carry, inps)

-- Shorter definitions:
bitAdder'' = row halfAdd

--
adder'' = row fullAdd
--
-- 3.4 Exercises
-- 3.1
halfSub (a, b) = (sub, borrow)
   where 
      sub    = xor2 (a, b)
      borrow = and2 (a, inv (b))

-- Podemos definir el bitSubber por inducci�n sobre listas, para practicar un poco:

bitSubber (borrowIn, []) = ([], borrowIn)

bitSubber (borrowIn, a:as) = (b:bs, borrowOut)
   where
      (b, borrow)     = halfSub (borrowIn, a)
      (bs, borrowOut) = bitSubber (borrow, as)

--
bitSubber' = row halfSub 

--
adder2 ([],[]) = []

adder2 (a:as, b:bs) = sum:sums
   where
      (sum, carry)     = halfAdd (a, b)
      (sums, carryOut) = adder (carry, (as, bs))

-- Podemos generalizar ese patr�n de conexi�n: (no me parece muy �til, pero a los fines pedag�gicos sirve)
cabezaCola cir1 cir2 ([],[]) = []

cabezaCola cir1 cir2 (a:as, b:bs) = sum:sums
   where
      (sum, carry) = cir1 (a, b)
      (sums, carryOut) = cir2 (carry, (as, bs))

adder2' = cabezaCola halfAdd adder
-- mortal de la muerte ;)

-- 3.7
par cir1 cir2 (a, b) = (c, d)
   where
      c = cir1 a
      d = cir2 b

cir1 -|- cir2 = par cir1 cir2 


--negador = par inv inv
--testpar = writeVhdlInputOutput "par" negador 
 --        (var "a", var "b")
  --       (var "c", var "d")

--serial cir1 cir2 a = c
 --  where
 --     b = cir1 a
  --    c = cir2 b

--cir1 ->- cir2 = serial cir1 cir2

serial circ1 circ2 = circ2 . circ1
circ1 ->- circ2    = serial circ1 circ2



-- 3.6 palort
pair ([]) = []
pair (a:b:as) = (c:cs)
   where
      c  = (a ,b)
      cs = pair (as)

testpair = simulate pair ([low,high,low,high,high,low])

--
unpair [] = ([])
unpair ((a,b):abs) = (a:b:unpair (abs))

numBreak num = (bit, num')
   where
      digit = imod (num, 2)
      bit   = int2bit digit
      num'  = idiv (num, 2)

int2bin 0 num = []

int2bin n num = (bit:bits)
   where
      (bit, num') = numBreak num
      bits        = int2bin (n-1) num'

-- 3.4
bin2int [] = 0

bin2int (a:as) = num
   where
      num' = bin2int as
      num = bit2int a + 2*num'
 

-- 3.5
zipp ([],[]) = []

zipp (a:as, b:bs) = c:cs  -- d� lo mismo que poner (c:cs)
   where
      c  = (a, b)
      cs = zipp (as, bs)

testzipp = simulate zipp ([low, high, low],[ high, high, low])

--
unzipp [] = ([], [])
unzipp ((a,b):abs) = (a:as, b:bs)
   where
      (as, bs) = unzipp abs

--
serialPrefix g (c, []) = ([], c)

serialPrefix g (c, a:as) = (op:ops, out)
   where
      op         = g (c, a)
      (ops, out) = serialPrefix g (op, as)


--
prop_AdderCommutative (as,bs) = ok
   where
      out1 = adder2 (as, bs)
      out2 = adder2 (bs, as)
      ok   = out1 <==> out2

prop_Equivalent circ1 circ2 a = ok
   where
      out1 = circ1 a
      out2 = circ2 a
      ok   = out1 <==> out2

prop_AdderCommutative_ForSize n =
   forAll (list n) $ \as ->
     forAll (list n) $ \bs ->
       prop_AdderCommutative (as, bs)
--
dotOp ((g1, p1) ,(g, p)) = (go, po)
   where
      go = or2 (g, and2 (p, g1))
      po = and2 (p, p1)

--
checkAssociativeDotOp (a, b, c) = ok
   where
      (d, e) = dotOp (a, dotOp (b, c))
      (f, g) = dotOp (dotOp (a, b), c)
      ok1    = d <=> f
      ok2    = e <=> g
      ok     = ok1 <=> ok2

--
sklansky op [a] = [a]
sklansky op as  = ls' ++ [op (last ls', r) | r <- rs']
   where
      k        = (length as + 1) `div` 2
      (ls, rs) = splitAt k as
      ls'      = sklansky op ls
      rs'      = sklansky op rs

--
peine op []     = []
peine op [a]    = []
peine op (a:as) = [a, op (a, head as)] ++ peine op (tail as)

--
posPeine op as = [head as] ++ peine op (tail as) ++ [last as]


--
unzipl [] = ([],[])
unzipl (a:b:abs) = (a:as, b:bs)
   where
      (as, bs) = unzipl abs

--
zipl ([], []) = []
zipl (a:as, b:bs) = a:b:zipl(as, bs)

--
append (a, b) = a ++ b

--

--
--costadoI p (as, bs) = (p as, bs)

costadoD p (as, bs) = (as, p bs)
-- ser�a bueno que s�lo aplique p a la cantidad necesaria 
-- costadoI' p as = (bs, p cs)
 --     where
  --    bs = lo que le sobre
   --   cs = la cantidad de datos necesarios para que est� bien tipificada p cs    

operaD p = id -|- p
--
miti p = unzipl ->- operaD p ->- zipl

wrapR p op = peine op ->- miti p ->- posPeine op
