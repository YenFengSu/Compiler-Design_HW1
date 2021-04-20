%{
    #include <stdio.h>
    int nChar=0, nLine=0;
%}

%%
\n      {
            nChar++;
            nLine++;
        }
.       {
            nChar++;
        }

%%

int main(int argc, char* argv[]) {
    yylex();
    printf("Total # of lines: %d\n", nLine);
    printf("Total # of chars: %d\n", nChar);
    return 0;
}