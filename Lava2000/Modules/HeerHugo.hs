module HeerHugo
  ( heerhugo
  )
 where

import Signal
import Netlist
import Generic
import Sequent
import Property
import Error
import LavaDir
import Verification

import List
  ( intersperse
  , nub
  )

import IO
  ( openFile
  , IOMode(..)
  , hPutStr
  , hClose
  )

import IOBuffering
  ( noBuffering
  )

import Data.IORef

import System.Cmd (system)
import System.Exit (ExitCode(..))

----------------------------------------------------------------
-- heerhugo

heerhugo :: Checkable a => a -> IO ProofResult
heerhugo a =
  do checkVerifyDir
     noBuffering
     (props,_) <- properties a
     proveFile defsFile (writeDefinitions defsFile props)
 where
  defsFile = verifyDir ++ "/circuit.hh"

----------------------------------------------------------------
-- definitions

writeDefinitions :: FilePath -> [Signal Bool] -> IO ()
writeDefinitions file props =
  do handle <- openFile file WriteMode
     var <- newIORef 0

     hPutStr handle $ unlines $
       [ "% Generated by Lava2000"
       , ""
       , "( 1 & ~0 &"
       ]

     let new =
           do n <- readIORef var
              let n' = n+1; v = "w" ++ show n'
              writeIORef var n'
              return v

         define v s =
           case s of
             Bool True     -> op0 "1"
             Bool False    -> op0 "0"
             Inv x         -> op1 "~" x

             And []        -> define v (Bool True)
             And [x]       -> op0 x
             And xs        -> opl "&" xs

             Or  []        -> define v (Bool False)
             Or  [x]       -> op0 x
             Or  xs        -> opl "|" xs

             Xor  []       -> define v (Bool False)
             Xor  xs       -> op0 (xor xs)

             VarBool s     -> op0 s
             DelayBool x y -> delay x y

             _             -> wrong Error.NoArithmetic
           where
            w i = v ++ "_" ++ show i

            op0 s =
              hPutStr handle $ "(" ++ v ++ " <-> " ++ s ++ ") &\n"

            op1 op s =
              op0 (op ++ "(" ++ s ++ ")")

            opl op xs =
              op0 (concat (intersperse (" " ++ op ++ " ") xs))

            xor [x]    = x
            xor [x,y]  = "~(" ++ x ++ " <-> " ++ y ++ ")"
            xor (x:xs) = "(" ++ x ++ " & ~("
                      ++ concat (intersperse " | " xs)
                      ++ ") | (~" ++ x ++ " & " ++ xor xs ++ "))"

            delay x y = wrong DelayEval

     outvs <- netlistIO new define (struct props)
     hPutStr handle $ unlines $
       [ "~(" ++ concat (intersperse " & " (flatten outvs)) ++ ")"
       , ")"
       ]

     hClose handle

----------------------------------------------------------------
-- primitive proving

proveFile :: FilePath -> IO () -> IO ProofResult
proveFile file before =
  do putStr "HeerHugo: "
     before
     putStr "... "
     putStrLn "(Written file)"
     {-
     lavadir <- getLavaDir
     x <- system ( lavadir
                ++ "/Scripts/smv.wrapper "
                ++ file
                ++ " -showTime"
                 )
     let res = case x of
                 ExitSuccess   -> Valid
                 ExitFailure 1 -> Indeterminate
                 ExitFailure _ -> Falsifiable
     putStrLn (show res ++ ".")
     return res
     -}
     return Indeterminate

----------------------------------------------------------------
-- the end.
