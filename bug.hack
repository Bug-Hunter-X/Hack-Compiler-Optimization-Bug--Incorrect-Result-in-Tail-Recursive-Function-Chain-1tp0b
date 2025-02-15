function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5); // Expected: 11, Actual: 10
}

This is because of the way the compiler optimizes tail recursive functions. When the function is tail recursive, it can optimize the call stack, which can lead to unexpected results in some cases. In this example, the compiler may optimize the call to `foo` from `bar` and the call to `bar` from `baz`, which can cause the final result to be incorrect. This is a rare bug and it is only likely to occur when dealing with a chain of tail recursive calls.