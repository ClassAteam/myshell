#!/usr/bin/env bash

name="$1"
filename=${name::-3}

g++ $1 -I ~/benchmark/include/ -g -O4 -Wall -Wextra -Werror -pedantic --std=c++14 \
    ~/benchmark/build/src/libbenchmark.a -lpthread -lrt -lm -o $filename
