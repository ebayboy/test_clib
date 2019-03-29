#!/bin/bash

#go install -buildmode=shared -linkshared std

rm -rf libtest_clib.{so,h,a} test

if [ "$1" == "so" ] 
then
    echo "test dynamic so!"
    CLIB=-ltest_clib
    BUILD_MODE=c-shared
    LIBOUT=libtest_clib.so
else 
    echo "test static lib!"
    CLIB=-ltest_clib
    BUILD_MODE=c-archive
    LIBOUT=libtest_clib.a
fi

go build -buildmode=$BUILD_MODE -o $LIBOUT test_clib

#test go clib 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./
gcc ./golibtest/test.c -I./ -L ./ $CLIB -lpthread -o test
./test && ls -lt
