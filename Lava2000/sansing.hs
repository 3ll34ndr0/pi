import IO
 
showFile fnam =
      do  { fh <- openFile fnam ReadMode
          ; fc <- hGetContents fh
	  ; putStr $ unlines $ 
	  ["El archivo tiene " ++ show (length fc) ++ " lineas"]
          ; putStr $ take 100 fc
          ; hClose fh
          }
 
test = showFile "bar.txt"
-- test2 = length fc
-- test3 xs = $ unlines $ xs
