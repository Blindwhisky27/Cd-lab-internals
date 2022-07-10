
%{
    #include<stdio.h>
    int sl=0,ml=0;

%}

%%
"//".* {fprintf(yyout," ");sl++;}
"/*"(.|\n)*"*/" {fprintf(yyout," ");
                   for(int i=0;yytext[i]!='\0';i++){
                        if(yytext[i]=='\n') ml++;
                        }
                  }


EOF return 0;
%%

int main() {
    printf("Enter string\n");
    yyin=fopen("v.txt","r");
    yyout=fopen("v1.txt","w");
    yylex();
    printf("\nSL: %d ML: %d\n",sl,ml);
    return 0;
}
int yywrap(){
    return 1;
}
