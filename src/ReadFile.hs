module ReadFile where

import System.IO  
  
main = do  
    handle <- openFile "app/Main.hs" ReadMode  
    contents <- hGetContents handle  
    putStr "========== Start of 'app/Main.hs' ==========\n"
    putStr contents  
    putStr "========== End of 'app/Main.hs' ==========\n" 
    hClose handle  