# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-captured-nested-bvar.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-captured-nested-bvar.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-captured-nested-bvar.mm" 2




void q(void (^p)(void)) {
    p();
}

void f() {
    __block char BYREF_VAR_CHECK = 'a';
    __block char d = 'd';
    q(^{
        q(^{
            __block char e = 'e';
            char l = 'l';
            BYREF_VAR_CHECK = 'b';
            d = 'd';
            q(^{
                 e = '1';
                 BYREF_VAR_CHECK = '2';
                 d = '3';
               }
             );
        });
    });
}

int main() {
    f();
    return 0;
}
