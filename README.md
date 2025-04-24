# Compiler-Design

## Core underlying algorithms written in Lex

This repository contains a series of compiler construction modules implemented using **Lex** (`.l` files). Each program demonstrates a specific phase or concept of a compiler pipeline—from lexical analysis to code generation—targeted at building a simplified compiler for a hypothetical language.

- **Lexical Analysis**  
  Tokenization of source code into identifiers, keywords, operators, literals, and symbols.

- **Syntax Analysis**  
  - Left recursion elimination (`eliminatelr.l`)
  - Left factoring (`leftfactoring.l`)
  - Recursive descent parsing simulation (`recdecentparsing.l`)

- **Intermediate Code Generation**  
  Generation of three-address code and abstract instructions (`intercodegen.l`)

- **Code Optimization**  
  Implementation of peephole-like optimizations and redundant code elimination (`codeoptimization.l`)

- **Target Code Generation**  
  Converting intermediate code into machine-like target instructions (`targetcodegen.l`)

- **Utility Programs**  
  - `rmcom.l`: Removes comments from source code  
  - `file.l`: Performs basic file input/output operations  
  - `vowconstcount.l`, `wordcount.l`, `ltscount.l`: Illustrative Lex programs for string processing
 
## Instructions to run

Make sure you have **Lex/Flex** and **GCC** installed.

```bash
lex filename.l      # Replace with desired file, e.g., intercodegen.l
gcc lex.yy.c -o output
./output < input.txt
```
