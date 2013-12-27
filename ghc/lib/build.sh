#!/bin/bash

name=llvm
cabal clean
cabal configure --ghc-options='-v -fllvm' --disable-library-profiling --enable-shared
cabal build
cp dist/build/libHSlibtest*.so lib-${name}.so
objdump -xRrtTd lib-$name > lib-${name}.objdump
objdump -Dj .text lib-$name > lib-${name}.text

name=ncg
cabal clean
cabal configure --ghc-options='-v' --disable-library-profiling --enable-shared
cabal build
cp dist/build/libHSlibtest*.so lib-${name}.so
objdump -xRrtTd lib-${name}.so > lib-${name}.objdump
objdump -Dj .text lib-${name}.so > lib-${name}.text
