%{
    #include <stdio.h>
    int k=0,i=0,o=0;
%}

%%
auto|break|case|char|continue|do|default|const|double|else|enum|extern|for|if|goto|float|int|long|reg
ister|return|signed|static|sizeof|short|struct|switch|typedef|union|void|while|volatile|unsigned { }
("/"[^\"]*"/") { k++;}
("_"|[a-z]|[A-Z])("_"|[a-z]|[A-Z]|[0-9])* {i++;}
"#include".* ;
"#"[a-zA-Z]+.* ;
[;] ;
[ ] ;
[,] ;
[+*%/-] {o++;}
[\n] ;

%%
void main()
{
yyin=fopen("in.c","r");
yylex();
printf("No. of identifiers=%d, keywords=%d, operators=%d\n",i,k,o);
}
int yywrap(){

}