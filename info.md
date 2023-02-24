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

