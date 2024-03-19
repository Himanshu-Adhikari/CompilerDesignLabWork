%{
#include<stdio.h>
%}
%%
^[_]*[a-zA-Z][a-zA-Z0-9_]* { printf("Valid identifier\n");}
.* {printf("Invalid identifier\n");}
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("Enter I/P:\n");
    yylex();
    return 0;
}