module LibTest2 where

import LibTest

{-# NOINLINE helloWorld2 #-}
helloWorld2 :: IO ()
helloWorld2 = do
    helloWorld
    putStrLn "2"

