module Main where

import IO

main :: IO ()
main = do fh <- openFile "bar.txt" ReadMode
          text <- hGetContents fh
          hClose fh
          putStrLn text
	  --return (hGetContents fh)
