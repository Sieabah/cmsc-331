/*

	A basic HTML Scanner

	Name: Christopher S Sidell
	Username: csidell1
	Date: 10/7/2014
	Class: CMSC 331 - 01
	
*/

ALPHA    [a-zA-Z]
ALPHANUM [a-zA-Z0-9]

%%
"<html>" 				printf("Open HTML tag\n");
"</html>" 				printf("Close HTML tag\n");

"<title>"				printf("Open title tag\n");
"</title>"				printf("Close title tag\n");

"<body>"				printf("Open body tag\n");
"</body>"				printf("Close body tag\n");

"<bold>"				printf("Open bold tag\n");
"</bold>"				printf("Close bold tag\n");

"<P>"					printf("Open paragraph tag\n");
"</P>"					printf("Close paragraph tag\n");

"<pre>"					printf("Open pre tag\n");
"</pre>"				printf("Close pre tag\n");

"<"{ALPHA}*">"			printf("UndefinedTag: %s\n",yytext);
"</"{ALPHA}*">"			printf("UndefinedCloseTag: %s\n",yytext);

"http://"{ALPHANUM}*"."{ALPHANUM}*"."{ALPHANUM}* 	printf("URL: %s\n",yytext);

. 						printf("undefined: %s\n",yytext);

%%