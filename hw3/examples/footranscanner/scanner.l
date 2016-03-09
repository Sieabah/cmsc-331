/* 
A stub scanner for a the footran numbers. Outputs lines like
"token: lexeme", for example "decimal_integer: +12".
*/

%{
%}

/* your definitions go here */

%%

/* your rules go here */ 

%%

main(argc, argv)
  int argc; char **argv;
  { 
    if (argc>1) yyin=fopen(argv[1],"r"); else yyin=stdin;
    yylex();
  }

