%{

#include<stdio.h>

%}

letter	[A-Za-z]
digit	[0-9]

%%

\/\/(.*)		{}
"/*"(.|"\n")*"*/"	{}

%%

int yywrap(void){}

int main() {

	extern FILE *yyin, *yyout;
	yyin = fopen("input.c", "r");
	yyout = fopen("output.c", "w");
	
	yylex();

	printf("\n\n");

	return 0;	
}
