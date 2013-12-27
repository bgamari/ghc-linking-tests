{-# LANGUAGE BangPatterns #-}

module LibTest where

{-# NOINLINE helloWorld #-}
helloWorld :: String
helloWorld = "Hello World!"

{-# NOINLINE infoRef #-}
infoRef :: Int -> Int
infoRef n = let n' = n+1 in n'

