#include <stdio.h>

int external();
int internal();

void hello() {
        printf("hello world!\n");
}

int main(int argc, char** argv) {
        external();
        internal();
        hello();
        return 0;
}
