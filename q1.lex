%{
#include<stdio.h>
int lines=0,spaces=0,tabs=0,characters=0,others=0;
%}

%%
\n {lines++;}
" " {spaces++;}
"\t" {tabs++;}
[A-Za-z0-9] {characters++;}
. {others++;}
%%
int main()
{
printf("Enter i/p:\n");
yylex();
printf("lines:%d\n",lines);
printf("spaces:%d\n",spaces);
printf("tabs:%d\n",tabs);
printf("metacharacters:%d\n",others);
printf("others:%d\n",others);
return 0;
}
int yywrap()
{
    return 1;
}
