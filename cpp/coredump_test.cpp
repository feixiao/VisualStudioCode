#include <cstdio>
#include <cstdlib>

// clang++ -g -o coredump_test coredump_test.cpp
// ./coredump_test
// lldb ./coredump_test
int main()
{
    int *ptr = NULL;
    *ptr = 0;
    return 0;
}
