function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  $temp = bar(x);
  return $temp - 1;
}

function main(): void {
  echo baz(5); // Expected: 11, Actual: 11
}

This solution introduces a temporary variable to prevent the compiler from optimizing the function calls in the same way as the original code. This avoids the optimization that caused the incorrect result.