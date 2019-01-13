#!/bin/bash
dos2unix in.txt
bison -o tema.tab.c -d tema.y 
flex -o tema.lex.c -l tema.l
g++ -o tema.out tema.lex.c tema.tab.c -lm -lfl

echo "IN 1"
./tema.out < in.txt

echo "IN 2"
./tema.out < in2.txt

./Clean.sh
