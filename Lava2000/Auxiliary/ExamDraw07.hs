module ExamDraw07 where

import Sortable

import List
  ( partition
  , transpose
  , sort
  )

-----------------------------------------------------------------------
-- Nets

data Net =
  Net
  { comps :: [(Int,Int,Int)]
  , bufs  :: [(Int,Int)]
  , phase :: Int
  , wire  :: Int
  , fo :: ((Int,Int),[(Int,Int)])
  , sp :: [Int]
  }

net :: Int -> Net
net i = Net [] [] 0 i ((0,1),[]) []

netd d i = Net [] [] d i ((d,1),[]) []

nets ds = [netd d i | (d,i) <- zip ds [1..length ds]]

instance Eq Net where
  n == m = wire n == wire m && phase n == phase m  -- extend?

instance Ord Net where
  n <= m = phase n <= phase m

instance Show Net where
  show n = show (wire n) ++ "/" ++ show (comps n) ++ "/" ++ show (bufs n)

instance Sortable Net where
  dell n = n'
   where 
    ph = phase n
    ((pfn,fn),fsn) = fo n
    n' = Net { comps = comps n
             , bufs = (ph,wire n):bufs n
             , phase = ph + 1
             , wire  = wire n
             , fo    = ((ph+1,1),(pfn,fn):fsn)
             , sp    = sp n
             }

  

  s21 (n,m) = o
    where
      ph = phase n `max` phase m
      ((pfm,fm),fsm) = fo m
      ((pfn,fn),fsn) = fo n
       
      o = Net { comps = (ph,wire n,wire m) : comps m
               , bufs = bufs m
               , phase = ph+1 
               , wire  = wire m
               , fo    = if ph > pfm then ((ph,1),(pfm,fm):fsm)
                               else ((pfm,fm),fsm)
               , sp    = (wire m-wire n-1):sp m
               }

-----------------------------------------------------------------------
-- drawing

draw :: Int -> Int -> Int -> [Net] -> IO ()
draw i pi s = putStr . unlines . (xfigdrawing False i pi s)

drawFile :: Int -> Int -> Int -> String -> [Net] -> IO ()
drawFile i pi s name = (writeFile name) . unlines . (xfigdrawing False i pi s)

drawFileCrooked :: Int -> Int -> Int -> String -> [Net] -> IO ()
drawFileCrooked i pi s name = (writeFile name) . unlines . (xfigdrawing True i pi s)

-- Mary wanting to produce xfig picture

xfigdrawing :: Bool -> Int -> Int -> Int -> [Net] -> [String]
xfigdrawing crook i pi s ns =
    ["#FIG 3.2"
     ,"Landscape"
     ,"Center"
     ,"Inches"
     ,"A4"
     ,"100.00"
     ,"Single"
     ,"-2"
     ,"1200 2"] ++ nphases i pi 0 s cmps ++ nbufs i pi 0 s bfs ++
  nwires i maxw maxl s ++ [drawtext (s*2*i,s*(maxl+4*i)) (s*2*i*maxw) statline]
 where
  cmps = concat (map comps ns)
  bfs  = concat (map bufs ns)

  nphases i pi ph s [] = []
  nphases i pi ph s cmps = concat (map ((drawcomps crook i pi ph s).reverse) (fixup p (sort [ order (x,y) | (_,x,y) <- this])))
                ++ nphases i pi (ph+1) s later
   where
    (this,later) = partition (\(ph',_,_) -> ph' == ph) cmps
    p (x1,y1) (x2,y2) = x1==x2

  nbufs i pi ph s [] = []
  nbufs i pi ph s bfs = concat (map ((map (drawbuf i pi ph s)).reverse) (fixup (==) (sort [ x | (_,x) <- this])))
      ++ nbufs i pi (ph+1) s later
    where
      (this,later) = partition (\(ph',_) -> ph'==ph) bfs
      

  nwires i w l s = [drawline' (0,s*(2*i*x)) (s*l,s*(2*i*x)) | x <- [1..w]]

  drawcomps _ i pi ph s [] = []
  drawcomps False i pi ph s (a:as) = (drawlcomp i ph s a) : map (drawcomp i ph s) as
  drawcomps True  i pi ph s (a:as) = map (drawcompCrooked i ph s) (a:as)

  

  

  fixup p [] = []     -- probably could have used some prelude function!
  fixup p [a] = [[a]]
  fixup p (a:b:cs) | (p a b)  = (a:fs):gss
                 | otherwise = [a]:fs:gss
      where (fs:gss) = fixup p (b:cs)

  drawcomp i ph s (x,y)
    = drawline' (s*(o1+i),s*((2*i*y)-i))(s*(o1+2*i),s*(2*i*y)) ++ "\n" ++
      drawcircle' (s*(o1+2*i),s*(2*i*y)) (s*pi)
              where --hd = 2*i * (y-x)
                    o1 = 2*i*ph



  drawcompCrooked i ph s (x,y)
     =  drawline' (s*o1,s*2*i*x) (s*(o1+2*i),s*(2*i*y)) ++ "\n" ++
        drawcircle' (s*(o1+2*i),s*(2*i*y)) (s*pi)
              where --hd = 2*i * (y-x)
                    o1 = 2*i*ph

  drawbuf i pi ph s y
    = drawWhiteCircle' (s*(o1+2*i),s*(2*i*y)) (s*pi)
              where o1 = 2*i*ph

  drawlcomp i ph s (x,y)
    = drawline' (s*o1,s*2*i*x)(s*(o1+i),s*(2*i*x +i)) ++ "\n" ++
      drawline' (s*(o1+i),s*(2*i*x +i)) (s*(o1+i),s*((2*i*y)-i)) ++ "\n" ++
      drawcomp i ph s (x,y)
         where hd = 2*i * (y-x)
               o1 = 2*i*ph

  drawline (x1,y1) (x2,y2) = "2 1 0 1 0 7 50 0 -1 0.000 0 0 -1 0 0 2\n       "++                               show x1 ++ "  " ++
                             show y1 ++ "  " ++
                             show x2 ++ "  " ++
                             show y2 

  drawline' (x1,y1) (x2,y2) = drawline (y1,x1) (y2,x2)
                            
  drawcircle (x,y) r = "1 4 0 1 0 0 50 0 20 0.000 1 0.0000" ++ " " ++
                       show x ++ "  " ++ show y ++ "  " ++
                       show r ++ "  " ++ show r ++ "  " ++
                       show (x-r) ++ "  " ++ show y ++ "  " ++
                       show (x+r) ++ "  " ++ show y 

  drawWhiteCircle (x,y) r = "1 4 0 1 0 7 50 0 20 0.000 1 0.0000" ++ " " ++
                             show x ++ "  " ++ show y ++ "  " ++
                             show r ++ "  " ++ show r ++ "  " ++
                             show (x-r) ++ "  " ++ show y ++ "  " ++
                             show (x+r) ++ "  " ++ show y 
  
  drawcircle' (x,y) r = drawcircle (y,x) r

  drawWhiteCircle' (x,y) r = drawWhiteCircle (y,x) r
 
  drawhoriz x l = "\\put(0," ++ show x ++ "){\\line(1,0){" ++ show l ++  "}}"

  drawtext (x,y) l s = "4 0 0 50 0 0 24 0.0000 4 600" ++ " " ++
                      show l ++ " " ++ show x ++ " " ++ show y ++ " " ++ 
                      s ++ "\\001"

  drawtext' (x,y) = drawtext (y,x)

  maxw = maximum [ x | (_,a,b) <- cmps, x <- [a,b] ]
  
  maxph = maximum [ ph | (ph,_,_) <- cmps ] + 1

  maxl = 2*i*maxph


  order (x,y) | x <= y    = (x,y)
              | otherwise = (y,x)
  


  statline = show maxw ++ " lines, "
              ++ show maxph ++ " stages, "
              ++ show (length cmps) ++ " operators."


drawPP s f n = drawFile 20 3 10 (s++ show n ++".fig") (f s21  [net i | i <- [1..n]])

drawPPC s f n = drawFileCrooked 20 3 10 (s++ show n ++".fig") (f s21  [net i | i <- [1..n]])

drawpatStraight s f n = drawFile 20 3 10 (s++ show n ++".fig") (f (s21,dell)  [net i | i <- [1..n]])

drawpat s f n = drawFileCrooked 20 3 10 (s++ show n ++".fig") (f (s21,dell)  [net i | i <- [1..n]])

netsOpD f n = f (s21,dell) [net i | i <- [1..n]]


-----------------------------------------------------------------------
-- the end.

