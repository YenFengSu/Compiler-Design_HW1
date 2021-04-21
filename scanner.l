%{
    #include <stdio.h>
    #define true 1
    #define false 0
    enum t_type {
        KEY,
        MACRO,
        ID,
        OP,
        PUNC,
        INTEGER,
        FLOAT,
        CHAR,
        STRING
    }
    t_type tt_key = KEY, tt_macro = MACRO, tt_id = ID;
    char is_source_on = 1, is_token_on = 1;
    int n_line = 1;

    void Hw1OutputToken(t_type token_type, const char* token_content) {
        if (is_token_on) {

        }
    }
    void Hw1OutputSource()
%}

%x PRAGMA

%%
"#pragma source on"\n {
    is_source_on = true;
}

"#pragma source off"\n {
    is_source_on = false;
}

"#pragma token on"\n {
    is_token_on = true;
}

"#pragma token off"\n {
    is_token_on = false;
}


%%

int main(int argc, char* argv[]) {
    yylex();
    return 0;
}