%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}
%%
S:B C
;
B:'a' B 'b'
|
;
C:'b' C 'C'
|
;
%%

int main(){
    yyparse();
    printf("Valid string\n");
}
int yyerror(){
    printf("Invalid string\n");
    exit(0);
}