module LibTest2 where

import LibTest

{-# NOINLINE testHelloWorld #-}
testHelloWorld :: IO ()
testHelloWorld = do
    putStrLn $ helloWorld

{-# NOINLINE testInfoRef #-}
testInfoRef :: IO Int
testInfoRef = do
    return $ infoRef 2
