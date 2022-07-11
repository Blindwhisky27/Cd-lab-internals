%{
#include"y.tab.h"
%}
%%
[a-zA-Z] return ALPHABET;
. return yytext[0];
%%

