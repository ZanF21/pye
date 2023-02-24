## Design and Evaluation of a Compiler Algorithm for Prefetching
### Todd C. Mowry, Monica S. Lam and Anoop Gupta

---
---

<!-- ## Abstract
[]: # Path: sw_prefetch.md
[]: # Compare this snippet from info.md:
[]: # ## Guidelines to follow
[]: # - Prefetch timing is important. The data should be in the cache by the time it is accessed, but without a delay that would allow other data to displace it before it is used. 
[]: # - Using prefetches that are too speculative can have negative effects, because there are costs(wasting bandwidth, additional conflict misses, increasead number of instructions) associated with data prefetch instructions.
[]: # - Prefetching data that is already in the cache increases overhead without providing any benefit -->

- Useful memory hierarchy optimization is to improve data locality by reordering the execution of iterations. 