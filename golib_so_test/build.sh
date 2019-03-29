#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./
gcc test_so.c  -I../ -L ../ -ltest_clib -lpthread -o test_so
./test_so

