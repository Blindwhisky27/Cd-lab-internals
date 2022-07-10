%{
    #include<stdio.h>
    int w=0,l=1,c=0;
%}

%%
[ ] w++;
[\n] l++;
[^" "\n] c++;
EOF return;
%%

int main(){
yyin=fopen("in.txt","r");
yylex();
printf("Whitespaces: %d, Lines: %d, Characters: %d\n",w,l,c);
return 0;
}
int yywrap(){
    return 1;
}