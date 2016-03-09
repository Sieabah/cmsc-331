DIG [0-9]

%%

{DIG}+            printf("int: %s\n", yytext);
{DIG}+"."{DIG}*   printf("float: %s\n", yytext);                     
.                 /* skip anything else */

%%

main(){yylex();}
