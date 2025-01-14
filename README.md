# Julia -0.0 Bug

This repository demonstrates a subtle bug in Julia related to the handling of negative zero (-0.0).  The `my_function` function exhibits unexpected behavior when the input is -0.0 due to the way the `if` condition evaluates floating-point numbers.  The solution provides a more robust approach to handle this edge case.

## Bug Description

In Julia, -0.0 is distinct from 0.0. Standard comparisons, like `>`, do not treat them equivalently. This can lead to unexpected behavior in conditional statements. The provided `bug.jl` file illustrates this by returning 0 for both 0.0 and -0.0 while the expected behavior is returning 0 for 0.0 and 0 for -0.0.

## Solution

The `bugSolution.jl` file offers a corrected version of `my_function` that explicitly handles -0.0, providing the expected consistent behavior. This involves using `isequal` for comparison rather than relying on the standard numerical comparison operator.