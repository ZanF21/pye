<details><summary><h1>NOTE</h1></summary>

- DO NOT INTERPRET THIS FILE WITH THE EXACT INFO PRESENT IN IT
- A lot of changes are to be come and made
- Specific words were used just cause they sounded appropriate
- This report was made in the night
- please forgive for any mistakes and dont judge me for it

</details>

---

## Sample data structure used in a graph algorithm

```cpp
typedef struct { 
    // Accessed using PREFETCH node
    vector neighbors;      // a list of pointers to neighbors
    int degree;            // the out-degree (= in-degree) of the graph-+
    // Various other data to fill in PREFETCH node (so that data is not prefetched)

    /*
        Graphs holding data locally is unlikely, but we assume its present locally
        That will take care of all possible scenarios
    */
    // Accessed using PREFTECH &(node->data + k)
    // `k` is such that all of the data is prefetched
    void* data;  // some arbitrary problem-specific data

    // PREFETCH &(node->misc)
    ...
    ... misc data of the node
    ...
}

// Slightly modified payload
typedef struct {
    int parent_label;
    int phase_discovered;
    char junk_buffer[56];
    // above is 64 bytes

    char bulk_data[128];    // 2*64
} payload;
```

- Our study is pretty much limited to the relevant `info` and `data` section. 
- So as to see the imporvment, `misc data` is not considered currently but can be easily handled using similar techniques that we will be employing.

---

## Currently available and usable `prefetch` instructions are:

```cpp
_mm_prefetch(&c, _MM_HINT_T0);  // PREFETCHT0 c
_mm_prefetch(&c, _MM_HINT_T1);  // PREFETCHT1 c
_mm_prefetch(&c, _MM_HINT_T2);  // PREFETCHT2 c
_mm_prefetch(&c, _MM_HINT_NTA); // PREFETCHNTA c

// Where &c is the address of the data that is being hinted for prefetching
```

<details>
<summary>
<b><i>Note</b></i> :
</summary>

-  No specific instruction for `PREFETCHW` was found
-  Searching resulted in finding out that `PREFETCHNTA` is basically `PREFETCHNTA`
   -  As the non temporal hint will basically invalidate all other instances present on the cache
   -  Bring the data to a very close to the process and be done with it.
   -  And will quickly be delt with too (removed from cache)

</details>

---

## Problems with Modfying code to a large extent

<details>
<summary>As discussed previosuly, </summary>
  
  - For conditional prefetches, we would like to perform a prefetch to the non data segment (preferably)
  - Perform the condition check, and based on the direction the branch takes, we would like to prefetch the data segment
  - And try to eliminate the condition check that would be performed in the future iteration. 

<details>
<summary>Possible ways to achive this: </summary>

- Store the result of the conditional check performed in memory and use it when the regular program flow needs it.
- Problems:
    - At this point it isnt an optimization to the compiler but a new compiler in itself.
    - We didnt like how the current compiler just relies on cache misses to get data that is needed.
    - And want to change the compiler in itself.

  <details>
  <summary>Possible solution:</summary> 
  
  - Have a parallel run as the regular program flow ( how manyever lines/iterations ahead )
  - If a condition check was present that was used to prefetch the data just have it in the cache longer, when the regular program flow reaches that point of the same condition check, it will atleast not endup with a cache miss and move on.
  
  </details>
</details>

</details>

---
| with `prefetch` | without `prefetch` |
|:---:|:---:|

```assembly
00000000000022e6 <broadcast_start>:
    22e6:	push   rbp
    22e7:	mov    rbp,rsp
    22ea:	add    rsp,0xffffffffffffff80
    22ee:	mov    [rbp-0x78],rdi
    22f2:	mov    [rbp-0x7c],esi
    22f5:	mov    rax,fs:0x28
    
    22fc:	nop 
    
    22fe:	mov    [rbp-0x8],rax
    2302:	xor    eax,eax
    2304:	mov    [rbp-0x60],0x1
    230b:	mov    rax,[rbp-0x78]
    230f:	mov    [rbp-0x48],rax
    2313:	mov    [rbp-0x5c],0x2
    231a:	mov    [rbp-0x64],0x0
    2321:	jmp    2380 <broadcast_start+0x9a>
    2323:	mov    eax,[rbp-0x64]
    2326:	movsxd rdx,eax
    2329:	mov    rax,[rbp-0x48]
    232d:	mov    rsi,rdx
    2330:	mov    rdi,rax
    2333:	call   3431 <elem_at>
    2338:	mov    [rbp-0x58],rax
    233c:	mov    rax,[rbp-0x58]
    2340:	mov    rax,[rax+0x20]
    2344:	mov    [rbp-0x50],rax
    
    2348:	mov    rax,[rbp-0x58]
    234c:	prefetcht0 [rax]            <!-- -->
    
    234f:	mov    rax,[rbp-0x50]
    2353:	prefetcht0 [rax]            <!-- -->
    
    2356:	mov    rax,[rbp-0x50]
    235a:	mov    eax,[rax+0x4]
    235d:	cmp    [rbp-0x7c],eax
    2360:	jne    237c <broadcast_start+0x96>
    
    2362:	mov    rax,[rbp-0x50]
    2366:	add    rax,0x3000
    236c:	prefetcht0 [rax]            <!-- -->
    
    236f:	mov    rax,[rbp-0x50]
    2373:	add    rax,0x6000
    2379:	prefetcht0 [rax]            <!-- -->
    
    237c:	add    [rbp-0x64],0x1
    2380:	mov    eax,[rbp-0x64]
    2383:	cmp    eax,[rbp-0x5c]
    2386:	jl     2323 <broadcast_start+0x3d>
    2388:	mov    eax,[rbp-0x5c]
    238b:	mov    [rbp-0x18],eax
    238e:	mov    rax,[rbp-0x48]
    2392:	mov    [rbp-0x38],rax
    2396:	mov    eax,[rbp-0x7c]
    2399:	mov    [rbp-0x20],eax
    239c:	mov    rax,[rbp-0x78]
    23a0:	mov    [rbp-0x40],rax
    23a4:	mov    rax,[rbp-0x58]
    23a8:	mov    [rbp-0x30],rax
    23ac:	mov    rax,[rbp-0x50]
    23b0:	mov    [rbp-0x28],rax
    23b4:	mov    eax,[rbp-0x60]
    23b7:	mov    [rbp-0x1c],eax
    23ba:	lea    rax,[rbp-0x40]
    23be:	mov    ecx,0x0
    23c3:	mov    edx,0x0
    23c8:	mov    rsi,rax
    23cb:	lea    rax,[rip+0x3da]        # 27ac <broadcast_start._omp_fn.0>
    23d2:	mov    rdi,rax
    23d5:	call   20c0 <GOMP_parallel@plt>
    23da:	mov    rax,[rbp-0x30]
    23de:	mov    [rbp-0x58],rax
    23e2:	mov    rax,[rbp-0x28]
    23e6:	mov    [rbp-0x50],rax
    23ea:	mov    eax,[rbp-0x1c]
    23ed:	mov    [rbp-0x60],eax
    23f0:	mov    eax,[rbp-0x60]
    23f3:	mov    rdx,[rbp-0x8]
    23f7:	sub    rdx,fs:0x28
   
    23fe:	nop

    2400:	je     2407 <broadcast_start+0x121>
    2402:	call   20e0 <__stack_chk_fail@plt>
    2407:	leave
    2408:	ret
```

```assembly
00000000000022e6 <broadcast_start>:
    22e6:	push   rbp
    22e7:	mov    rbp,rsp
    22ea:	sub    rsp,0x40
    22ee:	mov    [rbp-0x38],rdi
    22f2:	mov    [rbp-0x3c],esi
    22f5:	mov    rax,fs:0x28
    22fc:	nop
    22fe:	mov    [rbp-0x8],rax
    2302:	xor    eax,eax
    2304:	mov    [rbp-0x24],0x1
    230b:	mov    eax,[rbp-0x3c]
    230e:	mov    [rbp-0x18],eax
    2311:	mov    rax,[rbp-0x38]
    2315:	mov    [rbp-0x20],rax
    2319:	mov    eax,[rbp-0x24]
    231c:	mov    [rbp-0x14],eax
    231f:	lea    rax,[rbp-0x20]
    2323:	mov    ecx,0x0
    2328:	mov    edx,0x0
    232d:	mov    rsi,rax
    2330:	lea    rax,[rip+0x3ca]        # 2701 <broadcast_start._omp_fn.0>
    2337:	mov    rdi,rax
    233a:	call   20c0 <GOMP_parallel@plt>
    233f:	mov    eax,[rbp-0x14]
    2342:	mov    [rbp-0x24],eax
    2345:	mov    eax,[rbp-0x24]
    2348:	mov    rdx,[rbp-0x8]
    234c:	sub    rdx,fs:0x28
    2353:   nop 
    2355:	je     235c <broadcast_start+0x76>
    2357:	call   20e0 <__stack_chk_fail@plt>
    235c:	leave
    235d:	ret

```
