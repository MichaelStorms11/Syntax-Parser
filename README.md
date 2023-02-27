# Syntax-Parser
This is a recursive descent syntax parser in C that can validate the syntax of a source code file provided by the
user. The source code file provided by the user will be written in a new programming language called “DanC” and is
based upon the following grammar (in BNF):

P ::= S

S ::= V=E | read(V) | print(V) | do { S } while C | S;S

C ::= E < E | E > E | E == E | E <> E | E <= E | E >= E

E ::= T | E + T | E - T

T ::= F | T * F | T / F | T % F

F ::= (E) | N | V

V ::= a | b | … | y | z | aV | bV | … | yV | zV

N ::= 0 | 1 | … | 8 | 9 | 0N | 1N | … | 8N | 9N

The parser should accept the source code file as a required command line argument and display an appropriate
error message if the argument is not provided or the file does not exist.
Lexeme formation is guided using the BNF rules / grammar above. The application can identify each lexeme
and its associated token. Invalid lexemes identify their token group as UNKNOWN.
The parser reads the given DanC source code file then identify
lexemes/tokens one at a time to ensure they can be aligned with known BNF rules for the language. For this
language, P::=S would be the root of the parse tree.

If the provided user file is free of syntax errors:
The program prints out “Syntax Validated” as the last line of output.

If the provided user file contains syntax errors:
The program prints out “Error encounter: The next lexeme was <lexeme> and the next token was <token>”
  i. Where <lexeme> is the lexeme that caused the problem (examples: “x”, “<>”)
  ii. Where <token> is the uppercase name of the token (examples: “IDENT”, “UNKNOWN”)
  
If the user did not provide a file as input:
The program will display an appropriate error message.

If the user did provide a file as input but the file does not exist:
The program will display an appropriate error message.
The program is compatible with the GNU C compiler version 5.4.0.
