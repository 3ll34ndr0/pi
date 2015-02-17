module LavaDir where

import System
  ( getEnv
  )

import IO
  ( try
  )

getLavaDir :: IO FilePath
getLavaDir =
  do ees <- try (getEnv "LAVADIR")
     return $ case ees of
                Left _  -> {-INSERT LAVADIR-} "/home/lean/tfinal/programas/lava/la-va/Lava2000"
                Right s -> s
