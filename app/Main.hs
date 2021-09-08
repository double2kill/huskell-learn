module Main where

import qualified MyFunction
import qualified MyLib
import qualified MyList
import qualified ReadFile

add :: Integer -> Integer -> Integer
main :: IO ()

add x y = x + y

doubleMe x = x + x 

main = do
  putStrLn "Hello, Haskell!"
  MyFunction.main
  MyLib.hello
  MyList.main
  ReadFile.main
