%{
    #include<stdio.h>
    #include<stdlib.h>
    
%}
%token NUM
%left '+''-'
%left '/''*'
%%
S: I {printf("Result: %d\n",$$);};
I: I'+'I {$$=$1+$3;}|
I: I'-'I {$$=$1-$3;}|
I: I'*'I {$$=$1*$3;}|
I: I'/'I {if($3==0) yyerror(); else $$=$1/$3;}|
I: '('I')' {$$=$2;}|
I: NUM;
%%
int main(){
    yyparse();
    return 0;
}
int yyerror(){
    printf("Invalid expression\n");
}
int yywrap(){
    return 1;
}