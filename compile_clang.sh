#clang -o test -g -O0 -m64 -std=c99 -Wall -Weverything -Wno-float-equal -pedantic -Isrc test/list.c
clang++ -o test_hashtable -g -O2 -m64 -Wall -Weverything -pedantic -Isrc test/main.cpp
#clang++ -o main.txt -g -O0 -m64 -Wall -Weverything -pedantic -Isrc -E test/main.cpp
