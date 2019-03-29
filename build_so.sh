#!/bin/bash

#go install -buildmode=shared -linkshared std
go build -buildmode=c-shared -o  libtest_clib.so test_clib
