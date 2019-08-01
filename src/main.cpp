#include <cstdio>

extern "C" {
    int double_num(int);
}

int main() {
    printf("5 * 2 = %d\n", double_num(5));
}
