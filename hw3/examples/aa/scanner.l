%%
(a|b)*aa(a|b)*      {printf("Accept %s\n", yytext);}
 
[a|b]+                   {printf("Reject %s\n", yytext);}

.|\n                       ECHO;
%%
main() {yylex();}
