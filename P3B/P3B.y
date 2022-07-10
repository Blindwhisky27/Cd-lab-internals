%{
    #include<stdio.h>
    int count=0;
%}

%token FOR LP RP LF RF NUM SPACE EXP
%%
S:I;
I: FOR A B {count++;};
A: LP E';'E';'E RP;
E: EXP Z NUM|
EXP Z EXP|
EXP U|
SPACE;
Z: '='|'>'|'<'|'>''='|'<''='|'=''+'|'=''-';
U: '+''+'|'-''-';
B: LF B RF|
I|
EXP|
EXP SPACE|SPACE I
;
%%
int main(){
    yyparse();
    printf("No of for loops: %d\n",count);
    return 0;
}
int yyerror(){
    printf("Invalid for loop syntax\n");
}
int yywrap(){}