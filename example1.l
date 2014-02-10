%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
stop 	//printf("Stop command received\n");
start	//printf("Start command received\n");
[0123456789]+	return NUMBER;
temperature return TOKTEMPERATURE;
target      return TOKTARGET;
on|off      return STATE;
heat        return TOKHEAT;

[a-zA-Z][a-zA-Z0-9]*	//printf("its a word\n");
\{	//printf("Open Braces\n");
\}	//printf("Closing Braces\n");
\n	/*ignore end of line*/;
[ \t]+	/*Ignore white space*/;
\"	//printf("Quote\n");
;	//printf("semicolon\n");
%%
