clang -c -emit-llvm file.c -o file.bc
llvm-dis file.bc
opt-load LLVMHello.so -opCounter -disable-output file.bc