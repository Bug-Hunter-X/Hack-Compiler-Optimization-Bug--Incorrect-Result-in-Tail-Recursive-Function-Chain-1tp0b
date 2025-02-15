# Hack Compiler Optimization Bug

This repository demonstrates an uncommon bug in the Hack compiler related to the optimization of tail-recursive functions.  The bug manifests when a chain of tail-recursive functions are called, leading to an unexpected result due to compiler optimization.

The issue is likely related to the way the compiler handles the optimization of tail-recursive function calls.  In certain cases, this optimization can lead to incorrect results, as seen in the provided example.

This bug is difficult to reproduce and is only likely to occur under specific conditions involving a chain of tail recursive calls.

## How to Reproduce

1. Clone this repository.
2. Compile and run the `bug.hack` file using the Hack compiler.
3. Observe the unexpected output.

## Solution

The solution involves rewriting the functions to avoid the problematic optimization pattern. This can often be achieved by slightly restructuring the code, as shown in `bugSolution.hack`.