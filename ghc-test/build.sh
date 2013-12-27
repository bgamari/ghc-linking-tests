#!/bin/bash

opt=0

name=llvm
cabal clean
cabal configure --ghc-options="-O$opt -v -fllvm" --disable-library-profiling --enable-shared
cabal build
cp dist/build/libHSlibtest*.so lib-${name}.so
cp dist/build/test/test test-${name}
objdump -xRrtTd lib-${name}.so > lib-${name}.objdump
objdump -Dj .text lib-${name}.so > lib-${name}.text

name=ncg
cabal clean
cabal configure --ghc-options="-O$opt -v" --disable-library-profiling --enable-shared
cabal build
cp dist/build/libHSlibtest*.so lib-${name}.so
cp dist/build/test/test test-${name}
objdump -xRrtTd lib-${name}.so > lib-${name}.objdump
objdump -Dj .text lib-${name}.so > lib-${name}.text
