#include <cstdio>
#include <cstdlib>

// clang++ -g  -O0 -o coredump_test coredump_test.cpp
// ./coredump_test
// lldb ./coredump_test
// lldb -c /core/core.1234

int main()
{
    int *ptr = NULL;
    *ptr = 0;
    return 0;
}
