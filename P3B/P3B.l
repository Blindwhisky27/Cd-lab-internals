%{
    #include "y.tab.h"
%}

%%
"for" return FOR;
"(" return LP;
")" return RP;
"{" return LF;
"}" return RF;
[a-zA-Z]* return EXP;
"=" return '=';
"-" return '-';
"+" return '+';
">" return '>';
"<" return '<';
";" return ';';
[0-9]+ return NUM;
[ ] return SPACE;
\n return 0;


%%
// for(i=0;i<10;i++) {for(i=0;i<10;i++){for(i=0;i<10;i++){}}}