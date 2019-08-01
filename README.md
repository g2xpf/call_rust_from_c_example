# Rust from C++ example

This example calls a function implemented in Rust (and C) from C++ code with using *no_main* attribute.
This is different from [rust-ffi-examples](https://github.com/alexcrichton/rust-ffi-examples/tree/master/cpp-to-sta)
in that rustc doesn't generate any static/dynamic libraries.

Specifically, this does following step:
1. Generate a static library **libmain.a** from **main.cpp** which is the caller of the function to link (**double_num**).
1. Compile **dummy.c** which defines **double_num** in C, and link it with **libmain.a**.
1. Compile **main.rs** which defines **double_num** in Rust and link it with **libmain.a**.

## Commands
### Build
```sh
make
```
### Execution
```sh
# run with Rust function
make run

# run with C function
make run_dummy
```



