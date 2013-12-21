#include <stdio.h>

int external();
int internal_ext();

void hello() {
        printf("hello world!\n");
}

int main(int argc, char** argv) {
        external();
        internal_ext();
        hello();
        return 0;
}
