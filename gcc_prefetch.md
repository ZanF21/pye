[Can be found here](https://gcc.gnu.org/projects/prefetch.html)

## Observation
- `__builtin_prefetch` seems to be present in the `objdump` of [`compile_check`](/tmp_code/compile_check.c) (the compiled is also present in `/tmp_code/`)
- `prefetcht0` is present in the `objdump` of [`compile_check`](/tmp_code/compile_check.asm) (only argument use was the address of prefetch variable)
- [Found this for `__builtin_prefetch`](https://www.daemon-systems.org/man/__builtin_prefetch.3.html)
    - A problem: can't seem to find `prefetchw`
    - Above pages hints that `NTA` would be the same as `W` cause writing  would be a `non-temporal-access` 
