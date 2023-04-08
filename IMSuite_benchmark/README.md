## Benchmarking Distributed Algorithms with OpenMP

To build:
- Move into ompdist directory and run the following commands:
    ```bash
    cmake . 
    make
    ```

Now you can use the benchmarks in the IMSuite like

```bash
./<benchmark_name> - <path-to-input-file(should be of mtx format)> <number-of-iterations>
```
For example:
```
$./connected_component - sample_test.mtx 10
```

You can download large input graphs (in mtx format) from stanford sparse graph repository available online (SNAP).

