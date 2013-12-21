libtest.so : libtest.o
	gcc -shared -o $@ $<

%.o : %.c
	clang -o $@ $<
	
%.ll : %.c
	clang -S -emit-llvm -o $@ $<

test : test.o libtest.so
	gcc -dynamic $< -ltest -o $@ 

