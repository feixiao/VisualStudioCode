#include <cstdio>
#include <cstdlib>

// clang++  -arch x86_64 -march=native -g  -O0 -o coredump_test coredump_test.cpp
// ulimit -c unlimited
// ./coredump_test
// lldb -arch x86_64 ./coredump_test  # 可以看到符号信息
// lldb -arch x86_64 -c /core/core.1234 # 不能可以看到符号信息

int main()
{
    int *ptr = NULL;
    *ptr = 0;
    return 0;
}
