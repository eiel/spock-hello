{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Spock.Safe


main :: IO ()
main = runSpock 8080 $ spockT id app

app :: SpockCtxT m IO ()
app = do
  get root $ text "Hello World!!!"
  get ("_ah" <//> "start") $ text ""
  get ("_ah" <//> "stop") $ text ""
  get ("_ah" <//> "health") $ text ""
