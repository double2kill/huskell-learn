{-# LANGUAGE DataKinds, TypeOperators, OverloadedStrings #-}
module Main where

import qualified Data.Text    as T
import qualified Data.Text.Lazy.Encoding as E
import Network.Wai ( responseLBS, Application )
import Network.HTTP.Types ( status200 )
import Network.Wai.Handler.Warp (run)

app :: Application
app _ respond = do
    putStrLn "I've done some IO here"
    respond $ responseLBS
        status200 
        [("Content-type","application/json; charset=utf-8")] 
        (E.encodeUtf8 "Hello 刘晨!")

main :: IO ()
main = do
    putStrLn $ "http://localhost:3000/"
    run 3000 app