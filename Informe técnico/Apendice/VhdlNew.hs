\chapter{\textsc{ Librería de Lava para generar netlist VHDL}}\label{chap:vhdlnew-lava}
\subsubsection{Librería modificada para generar un netlist VHDL apropiado para el Silicon Compiler de Electric}
\lstset{language=Haskell} 
\begin{lstlisting}
module VhdlNew
  ( writeVhdlClk
  , writeVhdlNoClk
  , writeVhdlInputClk
  , writeVhdlInputNoClk
  , writeVhdlInputOutputClk
  , writeVhdlInputOutputNoClk
  )
 where

import Signal
import Netlist
import Generic
import Sequent
import Error
import LavaDir

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

import System.IO
  ( stdout
  , BufferMode (..)
  , hSetBuffering
  )

import Data.IORef

import IOBuffering
  ( noBuffering
  )

--import IOExts
--  ( IORef
--  , newIORef
--  , readIORef
--  , writeIORef
--  )

import System
  ( system
  , ExitCode(..)
  )

----------------------------------------------------------------
-- write vhdl

writeVhdlClk :: (Constructive a, Generic b) => String -> (a -> b) -> IO ()
writeVhdlClk = writeVhdl True

writeVhdlNoClk :: (Constructive a, Generic b) => String -> (a -> b) -> IO ()
writeVhdlNoClk = writeVhdl False

writeVhdl :: (Constructive a, Generic b) => Bool -> String -> (a -> b) -> IO ()
writeVhdl clocked name circ =
  do writeVhdlInput clocked name circ (var "inp")

writeVhdlInputClk :: (Generic a, Generic b) => String -> (a -> b) -> a -> IO ()
writeVhdlInputClk = writeVhdlInput True

writeVhdlInputNoClk :: (Generic a, Generic b) => String -> (a -> b) -> a -> IO ()
writeVhdlInputNoClk = writeVhdlInput False

writeVhdlInput :: (Generic a, Generic b) => Bool -> String -> (a -> b) -> a -> IO ()
writeVhdlInput clocked name circ inp =
  do writeVhdlInputOutput clocked name circ inp (symbolize "outp" (circ inp))

writeVhdlInputOutputClk :: (Generic a, Generic b)
                     => String -> (a -> b) -> a -> b -> IO ()
writeVhdlInputOutputClk = writeVhdlInputOutput True

writeVhdlInputOutputNoClk :: (Generic a, Generic b)
                     => String -> (a -> b) -> a -> b -> IO ()
writeVhdlInputOutputNoClk = writeVhdlInputOutput False


writeVhdlInputOutput :: (Generic a, Generic b)
                     => Bool -> String -> (a -> b) -> a -> b -> IO ()
writeVhdlInputOutput clocked name circ inp out =
  do writeItAll clocked name inp (circ inp) out

writeItAll :: (Generic a, Generic b) => Bool -> String -> a -> b -> b -> IO ()
writeItAll clocked name inp out out' =
  do noBuffering
     putStr ("Writing to file \"" ++ file ++ "\" ... ")
     writeDefinitions clocked file name inp out out'
     putStrLn "Done."
 where
  file = name ++ ".vhd"
  
----------------------------------------------------------------
-- definitions

writeDefinitions :: (Generic a, Generic b)
                 => Bool -> FilePath -> String -> a -> b -> b -> IO ()
writeDefinitions clocked file name inp out out' =
  do firstHandle  <- openFile firstFile WriteMode
     secondHandle <- openFile secondFile WriteMode
     var <- newIORef 0
     

     hPutStr firstHandle $ unlines $
       [ "library ieee;"
       , ""
       , "use ieee.std_logic_1164.all;"
       , ""
       , "entity"
       , "  " ++ name
       , "is"
       , "port"
       , "  ( "
       , if clocked then "    clk : in std_logic ;" else " "
       , "    "] ++   -- , "  -- inputs"] ++
       [ "    " ++ v ++ " : in std_logic" | VarBool v <- [head inps]] ++
       [ "  ; " ++ v ++ " : in std_logic"
       | VarBool v <- tail inps
       ] ++
       [ ""
       , "  " -- outputs
       ] ++
       [ "  ; " ++ v ++ " : out std_logic"
       | VarBool v <- outs'
       ] ++
       [ "  );"
       , "end " ++ name ++ ";"
       , ""
       , "architecture"
       , "  structural"
       , "of"
       , "  " ++ name
       , "is"
	, " --Agregado para que Electric encuentre las celdas estandards"
	, "component and2"
	, "port( A, B : in std_logic;  Y : out std_logic);"
	," end component;"
	, "component or2"
	, "port( A, B : in std_logic;  Y : out std_logic);"
	," end component;"
	, "component xor2"
	, "port( A, B : in std_logic;  Y : out std_logic);"
	," end component;"
	, "component id"
	, "port( A : in std_logic;  Y : out std_logic);"
	," end component;"
	,"--"
       ]

       
     hPutStr secondHandle $ unlines $
       [ "begin"
       ]
     
     let new =
           do n <- readIORef var	
              let n' = n+1; v = "w" ++ show n'
              writeIORef var n'
              hPutStr firstHandle ("  signal " ++ v ++ " : std_logic;\n")
              return v
         
         define v s =
           case s of
             Bool True     -> port "vdd"  []
             Bool False    -> port "gnd"  []
             Inv x         -> port "inv"  [x]

             And []        -> define v (Bool True)
             And [x]       -> port "id"   [x]
             --And [x]       -> define v (Bool True) --modificación para probar, no funcionó.
             And [x,y]     -> port "and2" [x,y]
             And (x:xs)    -> define (w 0) (And xs)
                           >> define v (And [x,w 0])

             Or  []        -> define v (Bool False)
             Or  [x]       -> port "id"   [x]
             Or  [x,y]     -> port "or2"  [x,y]
             Or  (x:xs)    -> define (w 0) (Or xs)
                           >> define v (Or [x,w 0])

             Xor  []       -> define v (Bool False)
             Xor  [x]      -> port "id"   [x]
             Xor  [x,y]    -> port "xor2" [x,y]
             Xor  (x:xs)   -> define (w 0) (Or xs)
                           >> define (w 1) (Inv (w 0))
                           >> define (w 2) (And [x, w 1])
                           
                           >> define (w 3) (Inv x)
                           >> define (w 4) (Xor xs)
                           >> define (w 5) (And [w 3, w 4])
                           >> define v     (Or [w 2, w 5])

             VarBool s     -> port "id" [s]
             DelayBool x y -> if clocked then port "delay" [x, y] else wrong Error.DelayEval
             DlyBool x -> if clocked then port "dly" [x] else wrong Error.DlyEval
             

             _             -> wrong Error.NoArithmetic
           where
            w i = v ++ "[" ++ show i ++ "]"
            


            
            port "delay" [x, y] =
             do hPutStr secondHandle $
                    "  "
                   ++ make 9 ("c_" ++ v)
--                   ++ " :  std_"
                   ++ " :  "

                   ++ make 5 "dff"
                   ++ " port map ("
                   ++ concat (intersperse ", " ("clk":[y] ++ [v]))
                   ++ ");\n"   


            

            port name args =
              do hPutStr secondHandle $
                      "  "
                   ++ make 9 ("c_" ++ v)
--                   ++ " :  std_"
                   ++ " :  "

                   ++ make 5 name
                   ++ " port map ("
                   ++ concat (intersperse ", " (args ++ [v]))
                   ++ ");\n"    

     outvs <- netlistIO new define (struct out)
     hPutStr secondHandle $ unlines $
       [ ""
       , "  " -- , "  -- naming outputs"
       ]
     
     sequence
       [ define v' (VarBool v)
       | (v,v') <- flatten outvs `zip` [ v' | VarBool v' <- outs' ]
       ]
     
     hPutStr secondHandle $ unlines $
       [ "end structural;"
       ]
     
     hClose firstHandle
     hClose secondHandle
     
     system ("cat " ++ firstFile ++ " " ++ secondFile ++ " > " ++ file)
--     cat firstFile secondFile file
     system ("rm " ++ firstFile ++ " " ++ secondFile)
    -- Create a new vhdl netlist without the wire or id gates: 
     system ("/home/lean/tfinal/programas/lava/la-va/Lava2000/Scripts/deleteWire.pl " ++ file)
     return ()
 where
  sigs x = map unsymbol . flatten . struct $ x
  
  inps  = sigs inp
  outs' = sigs out'
 
  firstFile  = file ++ "-1"
  secondFile = file ++ "-2"

  make n s = take (n `max` length s) (s ++ repeat ' ')

cat a b c = do
  do s <- readFile a
     writeFile c s
  do s <- readFile b
     appendFile c s

----------------------------------------------------------------
-- the end.

\end{lstlisting}

