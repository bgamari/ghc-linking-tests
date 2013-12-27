module LibTest where

{-# NOINLINE helloWorld #-}
helloWorld :: IO ()
helloWorld = putStrLn "Hello World!"

