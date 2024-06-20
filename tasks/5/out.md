| bin used | Stride | Stride_2 | Opimization | Number of iterations | Time |
| --- | --- | --- | --- | --- | --- |
| `mod_bfs_dijkstra` | - | - | `-O3` | 1 | 51416662801.00 && 51625253672.00 |
| `mod_bfs_dijkstra` | - | - | `-O3` | 5 | 51490929943.20 |
| `mod_bfs_dijkstra` | - | - | `-O3` | 10 | 51397560461.90 |
| `pf_modV4_bfs_dijkstra` | 5 | 10 | `-O3` | 1 | 51867176313.00 && 51525617047.00 && 51579247211.00 |
| `pf_modV4_bfs_dijkstra` | 5 | 10 | `-O3` | 5 | 51592501062.60 |
| `pf_modV4_bfs_dijkstra` | 3 | 5 | `-O3` | 1 | 51676516967.00 && 51612928415.00 |
| `pf_modV4_bfs_dijkstra` | 3 | 10 | `-O3` | 1 | 52018713803.00 && 51662650386.00 && 51612903998.00 |
| `pf_modV4_bfs_dijkstra` | 3 | 10 | `-O3` | 5 | 51476040144.80 && 51511071203.80 |
| `pf_modV4_bfs_dijkstra` | 2 | 10 | `-O3` | 1 | 51751677175.00 |
| `pf_modV4_bfs_dijkstra` | 2 | 10 | `-O3` | 5 | 51446181521.80 |
| `pf_modV4_bfs_dijkstra` | 2 | 10 | `-O0` | 5 | 51446181521.80 |

```bash
> perf stat -e task-clock,cycles,instructions,cache-references,cache-misses ./pf_modV4_bfs_dijkstra - yt_max.mtx 1
HAS_BUILTIN_PREFETCH
53920296399.00

 Performance counter stats for './pf_modV4_bfs_dijkstra - yt_max.mtx 1':

         55,279.86 msec task-clock                       #    1.000 CPUs utilized             
   176,728,713,393      cycles                           #    3.197 GHz                       
   234,025,656,274      instructions                     #    1.32  insn per cycle            
       244,505,935      cache-references                 #    4.423 M/sec                     
        84,274,609      cache-misses                     #   34.467 % of all cache refs       

      55.286372576 seconds time elapsed

      54.613466000 seconds user
       0.667969000 seconds sys

---

> perf stat -e task-clock,cycles,instructions,cache-references,cache-misses ./pf_modV4_bfs_dijkstra - yt.mtx 5
HAS_BUILTIN_PREFETCH
2497842899.00

 Performance counter stats for './pf_modV4_bfs_dijkstra - yt.mtx 5':

         15,413.26 msec task-clock                       #    1.000 CPUs utilized             
    49,160,448,603      cycles                           #    3.189 GHz                       
    57,619,984,116      instructions                     #    1.17  insn per cycle            
       310,023,395      cache-references                 #   20.114 M/sec                     
       140,818,444      cache-misses                     #   45.422 % of all cache refs       

      15.416357548 seconds time elapsed

      12.838916000 seconds user
       2.575782000 seconds sys

---

> perf stat -e task-clock,cycles,instructions,cache-references,cache-misses ./mod_bfs_dijkstra - yt.mtx 
5
2472960144.20

 Performance counter stats for './mod_bfs_dijkstra - yt.mtx 5':

         15,281.47 msec task-clock                       #    1.000 CPUs utilized             
    48,752,144,850      cycles                           #    3.190 GHz                       
    55,558,046,862      instructions                     #    1.14  insn per cycle            
       306,856,266      cache-references                 #   20.080 M/sec                     
       138,232,792      cache-misses                     #   45.048 % of all cache refs       

      15.284419265 seconds time elapsed

      12.766795000 seconds user
       2.515762000 seconds sys
```

```
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./pf_modV4_bfs_dijkstra - yt_max.mtx 20
HAS_BUILTIN_PREFETCH
1462736290.40
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - yt_max.mtx 20
1076490149.30
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ above is O3
above: command not found
```

```
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./pf_modV4_bfs_dijkstra - yt_max.mtx 10
HAS_BUILTIN_PREFETCH
1467184551.40
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - yt_max.mtx 10
1057675138.10
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ O2
```

```
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./pf_modV4_bfs_dijkstra - yt_max.mtx 10
HAS_BUILTIN_PREFETCH
1611719156.70
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - yt_max.mtx 10
1297172464.60
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ O1
O1: command not found
```

```
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./pf_modV4_bfs_dijkstra - yt_max.mtx 10
HAS_BUILTIN_PREFETCH
1497886742.90
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - yt_max.mtx 10
1223129015.00
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ O0??
O0??: command not found
```

```
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - yt_max.mtx 10
1077681604.70
rizan@doddabetta:~/UGRC/IMSuite_benchmark_mod$ ./pf_modV4_bfs_dijkstra - yt_max.mtx 10
HAS_BUILTIN_PREFETCH
1670246626.80
NO OPTIMIZATION
```