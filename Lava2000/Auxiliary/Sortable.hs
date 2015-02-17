module Sortable where

import Lava

-----------------------------------------------------------------------
-- class Sortable

class Sortable a where
  sort2 :: (a,a) -> (a,a)
  dell   :: a     -> a
  fk :: a -> (a,a)
  s21 :: (a,a) -> a

-----------------------------------------------------------------------
-- instance Sortable Int
{--
instance Sortable Int where
  sort2 (x,y) = (x `min` y, x `max` y)
  dell  x     = x
  fk    x     = (x,x)
  s21   (x,y) = x `max` y

-----------------------------------------------------------------------
-- instance Sortable Bit

class SortableSignal a where
  sort2Signal :: (Signal a, Signal a) -> (Signal a, Signal a)
  dellSignal  :: Signal a -> Signal a
  fkSignal    :: Signal a -> (Signal a, Signal a)
  s21Signal   :: (Signal a, Signal a) -> Signal a

instance SortableSignal Bool where
  sort2Signal (x,y) = (and2 (x,y), or2 (x,y))
  dellSignal  x     = x
  fkSignal    x     = (x,x)
  s21Signal  (x,y) = or2 (x,y)

instance SortableSignal a => Sortable (Signal a) where
  sort2 = sort2Signal
  dell = dellSignal
  fk   = fkSignal
  s21  = s21Signal
--}
-----------------------------------------------------------------------
-- the end.
