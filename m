#!/bin/bash
clear
gcc -std=gnu89 -g -O0 -Wall -Wextra -Werror twok_test.c twok_test2.c -o twok_test && \
valgrind --quiet --leak-check=full ./twok_test $* && \
sloccount --duplicates twok.h | awk '/Total Physical/ {print "LOC: " $NF}'
ctags -R twok.h
