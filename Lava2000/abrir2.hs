module Main where

import IO

main :: IO ()
main = do fh <- openFile "foo.txt" WriteMode
          hPutStr fh "Hello\nworld!"
          hFlush fh
          hClose fh
