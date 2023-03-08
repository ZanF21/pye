## Guidelines to follow
- Prefetch timing is important. The data should be in the cache by the time it is accessed, but without a delay that would allow other data to displace it before it is used. 
- Using prefetches that are too speculative can have negative effects, because there are costs(wasting bandwidth, additional conflict misses, increasead number of instructions) associated with data prefetch instructions.
- Prefetching data that is already in the cache increases overhead without providing any benefit 
---
## Terminology
- A ***timely*** prefetch is one where the prefetch request is completed and the data are placed in cache before they are accessed and opposite is true for a late prefetch.
- ***Coverage*** shows the fraction of original misses eliminated by prefetched lines.
- ***Accurate*** or useful prefetches are those that eliminate original misses, while ***harmful*** prefetches are those that induce misses by replacing useful data.
- ***Lookahead*** shows how well in advance a prefetch is issued, such that prefetched data arrive in cache on time and are not evicted by other data.
- A prefetch is ***redundant*** if the data-block brought by it is already present in cache.
---

- Take advantage of the hardware prefetcher’s ability to prefetch data that are accessed in linear patterns, in either a forward or backward direction.
- ?? [`PREFETCHNTA`](https://stackoverflow.com/questions/53270421/difference-between-prefetch-and-prefetchnta-instructions) ?? NTA (non-temporal data with respect to all cache levels)—prefetch data into non-temporal cache structure and into a location close to the processor, minimizing cache pollution.
    - [thread_on: PREFETCHNTA](https://groups.google.com/g/comp.lang.asm.x86/c/KubGb45proI)
- If your algorithm is single-pass use PREFETCHNTA. If your algorithm is multi-pass use 
PREFETCHT0.
-  [streaming store instructions](https://www.intel.com/content/dam/develop/external/us/en/documents/streaming-stores-2.pdf)

---

- In cases where memory accesses are in long, regular data patterns; the automatic hardware prefetcher should be favored over software prefetches.
    - Temporal — Data will be used again soon.
    - Spatial — Data will be used in adjacent locations (for example, on the same cache line).
    - Non-temporal — Data which is referenced once and not reused in the immediate future
- PREFETCH is implementation-specific; applications need to be tuned to each implementation to maximize performance

<details>
<summary> Note </summary>

> Using the PREFETCH instruction is recommended only if data does not fit in cache. Use of software prefetch should be limited to memory addresses that are managed or owned within the application context. Prefetching to addresses that are not mapped to physical pages can experience non-deterministic performance penalty. For example specifying a NULL pointer (0L) as address for a prefetch can cause long delays.
</details>

- Use the PREFETCH instructions in:
    - Predictable memory access patterns.
    - Time-consuming innermost loops.
    - Locations where the execution pipeline may stall if data is not available.

- `PREFETCHW` instruction is a hint to fetch data closer to the processor and invalidates any other cached copy in anticipation of a write
- Software prefetch instructions will fetch a 64 byte line of data from memory that contains the byte specified with the source operand. Software prefetch instructions always fetch 64 bytes of data, and because the instructions operate on bytes, can never be split across cache-lines. Thus, a single software prefetch cannot be used to fetch 128 bytes of data.

<details>
<summary> Note </summary>

> At the time of `PREFETCH`, if data is already found in a cache level that is closer to the processor than the cache level specified by the instruction, no data movement occurs.

</details>

- Programs or compilers can use dummy load instructions to imitate `PREFETCH` functionality, but preloading is not completely equivalent to using `PREFETCH` instructions. `PREFETCH` provides greater performance than preloading

<details>
<summary> Memory Type and Non-temporal Stores </summary>

Memory type can take precedence over a non-temporal hint, leading to the following considerations:
- If the programmer specifies a non-temporal store to strongly-ordered uncacheable memory (for example, Uncacheable (UC) or Write-Protect (WP) memory types), then the store behaves like an uncacheable store. The non-temporal hint is ignored and the memory type for the region is retained.
- If the programmer specifies the weakly-ordered uncacheable memory type of Write-Combining (WC), then the non-temporal store and the region have the same semantics and there is no conflict.
- If the programmer specifies a non-temporal store to cacheable memory (for example, Write-Back (WB) or Write-Through (WT) memory types), two cases may result:

>_CASE 1_ If the data is present in the cache hierarchy, the instruction will ensure consistency. A particular processor may choose different ways to implement this. The following approaches are probable: (a) updating data in-place in the cache hierarchy while preserving the memory type semantics assigned to that region or (b) evicting the data from the caches and writing the new non-temporal data to memory (with WC semantics).

- The approaches (separate or combined) can be different for different processors.

- If the streaming store hits a line that is present in the first-level cache, the store data is combined in place within the first-level cache. If the streaming store hits a line present in the second-level, 
the line and stored data is flushed from the second-level to system memory.

>_CASE 2_ If the data is not present in the cache hierarchy and the destination region is mapped as WB or WT; the transaction will be weakly ordered and is subject to all WC memory semantics.This non-temporal store will not write-allocate. Different implementations may choose to collapse and combine such stores.

</details>

- Software prefetching has the following characteristics:
    - Can handle irregular access patterns which do not trigger the hardware prefetcher.
    - Can use less bus bandwidth than hardware prefetching; see below.
    - Software prefetches must be added to new code, and do not benefit existing applications

- Achieving the highest level of memory optimization using PREFETCH instructions requires an understanding of the architecture of a given machine.

## To use the software PREFETCH instruction properly:

<details>
<summary> Determine software prefetch scheduling distance.</summary>

We define a new term, prefetch scheduling distance (PSD), which is represented by the number of iterations
- For large loops, prefetch 
scheduling distance can be set to 1 (that is, schedule prefetch instructions one iteration ahead). 
- For small 
loop bodies (that is, loop iterations with little computation), the prefetch scheduling distance must be 
more than one iteration 
</details>

<details>
<summary> Use software prefetch concatenation.</summary>

</details>

<details>
<summary> Minimize the number of software prefetches.</summary>

</details>

<details>
<summary> Mix software prefetch with computation instructions.</summary>

</details>

<details>
<summary> Use cache blocking techniques</summary>

</details>

<details>
<summary> Balance single-pass versus multi-pass execution.</summary>

</details>

<details>
<summary> Resolve memory bank conflict issues.</summary>

</details>

<details>
<summary> Resolve cache management issues.</summary>

</details>