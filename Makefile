test : test.o libtest.so
	gcc -dynamic $< -L. -ltest -o $@ 

libtest.so : libtest.c
	gcc -shared -fPIC -o $@ $<

%.o : %.c
	clang -c -fPIC -o $@ $<
	
%.ll : %.c
	clang -S -emit-llvm -o $@ $<

clean :
	git clean -f
