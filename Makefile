test : test.o libtest2.so
	gcc -dynamic $< -L. -ltest2 -o $@ 


# libtest
libtest.so : libtest.o
	gcc -shared -fPIC -o $@ $<

%.o : %.c
	clang -c -fPIC -o $@ $<
	
%.ll : %.c
	clang -S -emit-llvm -o $@ $<


# libtest2
libtest2.so : libtest2.o
	gcc -shared -fPIC -o $@ $<

%.s : %.ll
	llc -relocation-model=pic -o $@ $<

%.o : %.s
	as -o $@ $<


# Other rules
clean :
	git clean -f
