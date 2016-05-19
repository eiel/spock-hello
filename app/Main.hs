{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Spock.Safe


main :: IO ()
main = runSpock 8080 $ spockT id app

app :: SpockCtxT m IO ()
app = get root $ text "Hello World!"
