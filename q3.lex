%{
#include<stdio.h>
%}
%%
-?[0-9]+ {printf("Integer\n");}
-?[0-9]+[.][0-9]+ {printf("Float\n");}
.* {printf("NotANumber\n");}
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
