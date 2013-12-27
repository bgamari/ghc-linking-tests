module LibTest2 where

import LibTest

{-# NOINLINE testHelloWorld #-}
testHelloWorld :: IO String
testHelloWorld = do
    return helloWorld

{-# NOINLINE testInfoRef #-}
testInfoRef :: IO Int
testInfoRef = do
    return $ infoRef 2
