#!/usr/bin/env bash

name="$1"
filename=${name::-3}

g++ $1 -I ~/googletest/googletest/include/ -g -O4 -Wall -Wextra -Werror -pedantic --std=c++14 \
    ~/googletest/build/lib/libgtest.a ~/googletest/build/lib/libgtest_main.a -lpthread -lrt \
    -lm -o $filename
