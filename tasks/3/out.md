|No | mod_bfs_dijkstra | mod_pf_bfs_dijkstra |
| --- | --- | --- |
| 1 | 34739975432.00 | 35697107445.00 |
| 10 | 34945544711.00 | 33258292618.30 |
| 20 | 33993548962.30 | 33811323734.55 |

15516648617.00
35697107445.00

cs20b052@nanda:~/ugrc/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - ../com-Youtube/com-Youtube_Communities_top5000.mtx 1
34739975432.00
cs20b052@nanda:~/ugrc/IMSuite_benchmark_mod$ ./mod_pf_bfs_dijkstra - ../com-Youtube/com-Youtube_Communities_top5000.mtx 1
35697107445.00
cs20b052@nanda:~/ugrc/IMSuite_benchmark_mod$ ./mod_pf_bfs_dijkstra - ../com-Youtube/com-Youtube_Communities_top5000.mtx 10
33258292618.30
cs20b052@nanda:~/ugrc/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - ../com-Youtube/com-Youtube_Communities_top5000.mtx 10
34945544711.00
cs20b052@nanda:~/ugrc/IMSuite_benchmark_mod$ ./mod_bfs_dijkstra - ../com-Youtube/com-Youtube_Communities_top5000.mtx 20
33993548962.30
cs20b052@nanda:~/ugrc/IMSuite_benchmark_mod$ ./mod_pf_bfs_dijkstra - ../com-Youtube/com-Youtube_Communities_top5000.mtx 20
33811323734.55