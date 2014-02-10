toy_compiler
============

A simple working compiler with lex and yacc.

usage:

lex example1.l
yacc -d example1.y
cc lex.yy.c y.tab.c -o example0 
