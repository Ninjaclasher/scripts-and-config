compile_command = {
    "c"         : "gcc -Wall -Wshadow -Wchkp -Wno-unused-result -fsanitize=undefined -O2 {0} -o {1}.run",
    "c++"       : "g++ -Wall -Wshadow -Wchkp -Wno-unused-result -fsanitize=undefined -O2 {0} -o {1}.run",
    "gas"       : "as {0} -o tmp && ld tmp -o {1}.run && rm tmp", 
    "java"      : "javac {0}",
    "pypy"      : "",
    "pypy2"     : "",
    "pypy3"     : "",
    "python"    : "",
    "python2"   : "",
    "python3"   : "",
}
run_command = {
    "c"         : "./{1}.run",
    "c++"       : "./{1}.run",
    "gas"       : "./{1}.run",
    "java"      : "java {1}",
    "pypy"      : "pypy {0}",
    "pypy2"     : "pypy2 {0}",
    "pypy3"     : "pypy3 {0}",
    "python"    : "python {0}",
    "python2"   : "python2 {0}",
    "python3"   : "python3 {0}",
}
default_lang = {
    "cpp"       : "c++",
    "c"         : "c",
    "asm"       : "gas",
    "java"      : "java",
    "py"        : "python",
    "pypy"      : "pypy",
}
ext = {
    "c++":      "cpp",
    "c":        "c",
    "gas":      "asm",
    "java":     "java",
    "python":   "py",
}
pipe_symbol = [" < "," > ", " 2> "]

