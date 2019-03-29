#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./
gcc test_so.c  -L ./ -ltest_clib -o test_so
./test_so

