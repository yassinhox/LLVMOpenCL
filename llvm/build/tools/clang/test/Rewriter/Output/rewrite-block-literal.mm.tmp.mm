# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm" 2








typedef unsigned long size_t;



void I( void (^)(void));
void (^noop)(void);

void nothing();
int printf(const char*, ...);

typedef void (^T) (void);

void takeblock(T);
int takeintint(int (^C)(int)) { return C(4); }

T somefunction() {
  if (^{ })
    nothing();

  noop = ^{};

  noop = ^{printf("\nClosure\n"); };

  I(^{ });

  return ^{printf("\nClosure\n"); };
}
void test2() {
  int x = 4;

  takeblock(^{ printf("%d\n", x); });

  while (1) {
    takeblock(^{
        while(1) break;
      });
    break;
  }
}

void test4() {
  void (^noop)(void) = ^{};
  void (*noop2)() = 0;
}

void myfunc(int (^block)(int)) {}

void myfunc3(const int *x);

void test5() {
  int a;

  myfunc(^(int abcd) {
      myfunc3(&a);
      return 1;
    });
}

void *X;

static int global_x = 10;
void (^global_block)(void) = ^{ printf("global x is %d\n", global_x); };




typedef void (^void_block_t)(void);

static const void_block_t myBlock = ^{ };

static const void_block_t myBlock2 = ^ void(void) { };
