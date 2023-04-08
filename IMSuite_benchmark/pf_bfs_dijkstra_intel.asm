
pf_bfs_dijkstra:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64
    2004:	48 83 ec 08          	sub    rsp,0x8
    2008:	48 8b 05 b1 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fb1]        # 5fc0 <__gmon_start__@Base>
    200f:	48 85 c0             	test   rax,rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   rax
    2016:	48 83 c4 08          	add    rsp,0x8
    201a:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <printf@plt-0x10>:
    2020:	ff 35 ca 3f 00 00    	push   QWORD PTR [rip+0x3fca]        # 5ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 cc 3f 00 00    	jmp    QWORD PTR [rip+0x3fcc]        # 5ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002030 <printf@plt>:
    2030:	ff 25 ca 3f 00 00    	jmp    QWORD PTR [rip+0x3fca]        # 6000 <printf@GLIBC_2.2.5>
    2036:	68 00 00 00 00       	push   0x0
    203b:	e9 e0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002040 <__isoc99_fscanf@plt>:
    2040:	ff 25 c2 3f 00 00    	jmp    QWORD PTR [rip+0x3fc2]        # 6008 <__isoc99_fscanf@GLIBC_2.7>
    2046:	68 01 00 00 00       	push   0x1
    204b:	e9 d0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002050 <clock_gettime@plt>:
    2050:	ff 25 ba 3f 00 00    	jmp    QWORD PTR [rip+0x3fba]        # 6010 <clock_gettime@GLIBC_2.17>
    2056:	68 02 00 00 00       	push   0x2
    205b:	e9 c0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>:
    2060:	ff 25 b2 3f 00 00    	jmp    QWORD PTR [rip+0x3fb2]        # 6018 <GOMP_loop_maybe_nonmonotonic_runtime_next@GOMP_5.0>
    2066:	68 03 00 00 00       	push   0x3
    206b:	e9 b0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002070 <__isoc99_sscanf@plt>:
    2070:	ff 25 aa 3f 00 00    	jmp    QWORD PTR [rip+0x3faa]        # 6020 <__isoc99_sscanf@GLIBC_2.7>
    2076:	68 04 00 00 00       	push   0x4
    207b:	e9 a0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002080 <putchar@plt>:
    2080:	ff 25 a2 3f 00 00    	jmp    QWORD PTR [rip+0x3fa2]        # 6028 <putchar@GLIBC_2.2.5>
    2086:	68 05 00 00 00       	push   0x5
    208b:	e9 90 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002090 <malloc@plt>:
    2090:	ff 25 9a 3f 00 00    	jmp    QWORD PTR [rip+0x3f9a]        # 6030 <malloc@GLIBC_2.2.5>
    2096:	68 06 00 00 00       	push   0x6
    209b:	e9 80 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020a0 <fopen@plt>:
    20a0:	ff 25 92 3f 00 00    	jmp    QWORD PTR [rip+0x3f92]        # 6038 <fopen@GLIBC_2.2.5>
    20a6:	68 07 00 00 00       	push   0x7
    20ab:	e9 70 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020b0 <free@plt>:
    20b0:	ff 25 8a 3f 00 00    	jmp    QWORD PTR [rip+0x3f8a]        # 6040 <free@GLIBC_2.2.5>
    20b6:	68 08 00 00 00       	push   0x8
    20bb:	e9 60 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020c0 <GOMP_parallel@plt>:
    20c0:	ff 25 82 3f 00 00    	jmp    QWORD PTR [rip+0x3f82]        # 6048 <GOMP_parallel@GOMP_4.0>
    20c6:	68 09 00 00 00       	push   0x9
    20cb:	e9 50 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>:
    20d0:	ff 25 7a 3f 00 00    	jmp    QWORD PTR [rip+0x3f7a]        # 6050 <GOMP_loop_maybe_nonmonotonic_runtime_start@GOMP_5.0>
    20d6:	68 0a 00 00 00       	push   0xa
    20db:	e9 40 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020e0 <__stack_chk_fail@plt>:
    20e0:	ff 25 72 3f 00 00    	jmp    QWORD PTR [rip+0x3f72]        # 6058 <__stack_chk_fail@GLIBC_2.4>
    20e6:	68 0b 00 00 00       	push   0xb
    20eb:	e9 30 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020f0 <strcmp@plt>:
    20f0:	ff 25 6a 3f 00 00    	jmp    QWORD PTR [rip+0x3f6a]        # 6060 <strcmp@GLIBC_2.2.5>
    20f6:	68 0c 00 00 00       	push   0xc
    20fb:	e9 20 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002100 <calloc@plt>:
    2100:	ff 25 62 3f 00 00    	jmp    QWORD PTR [rip+0x3f62]        # 6068 <calloc@GLIBC_2.2.5>
    2106:	68 0d 00 00 00       	push   0xd
    210b:	e9 10 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002110 <fclose@plt>:
    2110:	ff 25 5a 3f 00 00    	jmp    QWORD PTR [rip+0x3f5a]        # 6070 <fclose@GLIBC_2.2.5>
    2116:	68 0e 00 00 00       	push   0xe
    211b:	e9 00 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002120 <realloc@plt>:
    2120:	ff 25 52 3f 00 00    	jmp    QWORD PTR [rip+0x3f52]        # 6078 <realloc@GLIBC_2.2.5>
    2126:	68 0f 00 00 00       	push   0xf
    212b:	e9 f0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002130 <rand@plt>:
    2130:	ff 25 4a 3f 00 00    	jmp    QWORD PTR [rip+0x3f4a]        # 6080 <rand@GLIBC_2.2.5>
    2136:	68 10 00 00 00       	push   0x10
    213b:	e9 e0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002140 <GOMP_loop_end_nowait@plt>:
    2140:	ff 25 42 3f 00 00    	jmp    QWORD PTR [rip+0x3f42]        # 6088 <GOMP_loop_end_nowait@GOMP_1.0>
    2146:	68 11 00 00 00       	push   0x11
    214b:	e9 d0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002150 <memcpy@plt>:
    2150:	ff 25 3a 3f 00 00    	jmp    QWORD PTR [rip+0x3f3a]        # 6090 <memcpy@GLIBC_2.14>
    2156:	68 12 00 00 00       	push   0x12
    215b:	e9 c0 fe ff ff       	jmp    2020 <_init+0x20>

Disassembly of section .text:

0000000000002160 <_start>:
    2160:	f3 0f 1e fa          	endbr64
    2164:	31 ed                	xor    ebp,ebp
    2166:	49 89 d1             	mov    r9,rdx
    2169:	5e                   	pop    rsi
    216a:	48 89 e2             	mov    rdx,rsp
    216d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    2171:	50                   	push   rax
    2172:	54                   	push   rsp
    2173:	45 31 c0             	xor    r8d,r8d
    2176:	31 c9                	xor    ecx,ecx
    2178:	48 8d 3d f5 02 00 00 	lea    rdi,[rip+0x2f5]        # 2474 <main>
    217f:	ff 15 5b 3e 00 00    	call   QWORD PTR [rip+0x3e5b]        # 5fe0 <__libc_start_main@GLIBC_2.34>
    2185:	f4                   	hlt
    2186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    218d:	00 00 00 
    2190:	48 8d 3d 11 3f 00 00 	lea    rdi,[rip+0x3f11]        # 60a8 <__TMC_END__>
    2197:	48 8d 05 0a 3f 00 00 	lea    rax,[rip+0x3f0a]        # 60a8 <__TMC_END__>
    219e:	48 39 f8             	cmp    rax,rdi
    21a1:	74 15                	je     21b8 <_start+0x58>
    21a3:	48 8b 05 1e 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e1e]        # 5fc8 <_ITM_deregisterTMCloneTable@Base>
    21aa:	48 85 c0             	test   rax,rax
    21ad:	74 09                	je     21b8 <_start+0x58>
    21af:	ff e0                	jmp    rax
    21b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    21b8:	c3                   	ret
    21b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    21c0:	48 8d 3d e1 3e 00 00 	lea    rdi,[rip+0x3ee1]        # 60a8 <__TMC_END__>
    21c7:	48 8d 35 da 3e 00 00 	lea    rsi,[rip+0x3eda]        # 60a8 <__TMC_END__>
    21ce:	48 29 fe             	sub    rsi,rdi
    21d1:	48 89 f0             	mov    rax,rsi
    21d4:	48 c1 ee 3f          	shr    rsi,0x3f
    21d8:	48 c1 f8 03          	sar    rax,0x3
    21dc:	48 01 c6             	add    rsi,rax
    21df:	48 d1 fe             	sar    rsi,1
    21e2:	74 14                	je     21f8 <_start+0x98>
    21e4:	48 8b 05 e5 3d 00 00 	mov    rax,QWORD PTR [rip+0x3de5]        # 5fd0 <_ITM_registerTMCloneTable@Base>
    21eb:	48 85 c0             	test   rax,rax
    21ee:	74 08                	je     21f8 <_start+0x98>
    21f0:	ff e0                	jmp    rax
    21f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    21f8:	c3                   	ret
    21f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2200:	f3 0f 1e fa          	endbr64
    2204:	80 3d a5 3e 00 00 00 	cmp    BYTE PTR [rip+0x3ea5],0x0        # 60b0 <__TMC_END__+0x8>
    220b:	75 33                	jne    2240 <_start+0xe0>
    220d:	55                   	push   rbp
    220e:	48 83 3d c2 3d 00 00 	cmp    QWORD PTR [rip+0x3dc2],0x0        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    2215:	00 
    2216:	48 89 e5             	mov    rbp,rsp
    2219:	74 0d                	je     2228 <_start+0xc8>
    221b:	48 8b 3d 7e 3e 00 00 	mov    rdi,QWORD PTR [rip+0x3e7e]        # 60a0 <__dso_handle>
    2222:	ff 15 b0 3d 00 00    	call   QWORD PTR [rip+0x3db0]        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    2228:	e8 63 ff ff ff       	call   2190 <_start+0x30>
    222d:	c6 05 7c 3e 00 00 01 	mov    BYTE PTR [rip+0x3e7c],0x1        # 60b0 <__TMC_END__+0x8>
    2234:	5d                   	pop    rbp
    2235:	c3                   	ret
    2236:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    223d:	00 00 00 
    2240:	c3                   	ret
    2241:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2248:	00 00 00 00 
    224c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2250:	f3 0f 1e fa          	endbr64
    2254:	e9 67 ff ff ff       	jmp    21c0 <_start+0x60>

0000000000002259 <initialize_graph>:
    2259:	55                   	push   rbp
    225a:	48 89 e5             	mov    rbp,rsp
    225d:	48 83 ec 30          	sub    rsp,0x30
    2261:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2265:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    226c:	00 00 
    226e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2272:	31 c0                	xor    eax,eax
    2274:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2278:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    227c:	48 8d 45 e0          	lea    rax,[rbp-0x20]
    2280:	b9 00 00 00 00       	mov    ecx,0x0
    2285:	ba 00 00 00 00       	mov    edx,0x0
    228a:	48 89 c6             	mov    rsi,rax
    228d:	48 8d 05 30 04 00 00 	lea    rax,[rip+0x430]        # 26c4 <initialize_graph._omp_fn.0>
    2294:	48 89 c7             	mov    rdi,rax
    2297:	e8 24 fe ff ff       	call   20c0 <GOMP_parallel@plt>
    229c:	8b 05 12 3e 00 00    	mov    eax,DWORD PTR [rip+0x3e12]        # 60b4 <ROOT>
    22a2:	48 63 d0             	movsxd rdx,eax
    22a5:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    22a9:	48 89 d6             	mov    rsi,rdx
    22ac:	48 89 c7             	mov    rdi,rax
    22af:	e8 7d 11 00 00       	call   3431 <elem_at>
    22b4:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    22b8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    22bc:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    22c0:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    22c4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    22c8:	c7 40 04 00 00 00 00 	mov    DWORD PTR [rax+0x4],0x0
    22cf:	90                   	nop
    22d0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    22d4:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    22db:	00 00 
    22dd:	74 05                	je     22e4 <initialize_graph+0x8b>
    22df:	e8 fc fd ff ff       	call   20e0 <__stack_chk_fail@plt>
    22e4:	c9                   	leave
    22e5:	c3                   	ret

00000000000022e6 <broadcast_start>:
    22e6:	55                   	push   rbp
    22e7:	48 89 e5             	mov    rbp,rsp
    22ea:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    22ee:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
    22f2:	89 75 84             	mov    DWORD PTR [rbp-0x7c],esi
    22f5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    22fc:	00 00 
    22fe:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2302:	31 c0                	xor    eax,eax
    2304:	c7 45 a0 01 00 00 00 	mov    DWORD PTR [rbp-0x60],0x1
    230b:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    230f:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    2313:	c7 45 a4 02 00 00 00 	mov    DWORD PTR [rbp-0x5c],0x2
    231a:	c7 45 9c 00 00 00 00 	mov    DWORD PTR [rbp-0x64],0x0
    2321:	eb 5d                	jmp    2380 <broadcast_start+0x9a>
    2323:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    2326:	48 63 d0             	movsxd rdx,eax
    2329:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    232d:	48 89 d6             	mov    rsi,rdx
    2330:	48 89 c7             	mov    rdi,rax
    2333:	e8 f9 10 00 00       	call   3431 <elem_at>
    2338:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
    233c:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    2340:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2344:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
    2348:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    234c:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    234f:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2353:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    2356:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    235a:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    235d:	39 45 84             	cmp    DWORD PTR [rbp-0x7c],eax
    2360:	75 1a                	jne    237c <broadcast_start+0x96>
    2362:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2366:	48 05 00 30 00 00    	add    rax,0x3000
    236c:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    236f:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2373:	48 05 00 60 00 00    	add    rax,0x6000
    2379:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    237c:	83 45 9c 01          	add    DWORD PTR [rbp-0x64],0x1
    2380:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    2383:	3b 45 a4             	cmp    eax,DWORD PTR [rbp-0x5c]
    2386:	7c 9b                	jl     2323 <broadcast_start+0x3d>
    2388:	8b 45 a4             	mov    eax,DWORD PTR [rbp-0x5c]
    238b:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    238e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2392:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    2396:	8b 45 84             	mov    eax,DWORD PTR [rbp-0x7c]
    2399:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
    239c:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    23a0:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    23a4:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    23a8:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    23ac:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    23b0:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    23b4:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
    23b7:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    23ba:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    23be:	b9 00 00 00 00       	mov    ecx,0x0
    23c3:	ba 00 00 00 00       	mov    edx,0x0
    23c8:	48 89 c6             	mov    rsi,rax
    23cb:	48 8d 05 da 03 00 00 	lea    rax,[rip+0x3da]        # 27ac <broadcast_start._omp_fn.0>
    23d2:	48 89 c7             	mov    rdi,rax
    23d5:	e8 e6 fc ff ff       	call   20c0 <GOMP_parallel@plt>
    23da:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    23de:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
    23e2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    23e6:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
    23ea:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
    23ed:	89 45 a0             	mov    DWORD PTR [rbp-0x60],eax
    23f0:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
    23f3:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    23f7:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    23fe:	00 00 
    2400:	74 05                	je     2407 <broadcast_start+0x121>
    2402:	e8 d9 fc ff ff       	call   20e0 <__stack_chk_fail@plt>
    2407:	c9                   	leave
    2408:	c3                   	ret

0000000000002409 <print_solution>:
    2409:	55                   	push   rbp
    240a:	48 89 e5             	mov    rbp,rsp
    240d:	48 83 ec 30          	sub    rsp,0x30
    2411:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2415:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
    241c:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    2423:	eb 3f                	jmp    2464 <print_solution+0x5b>
    2425:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    2428:	48 63 d0             	movsxd rdx,eax
    242b:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    242f:	48 89 d6             	mov    rsi,rdx
    2432:	48 89 c7             	mov    rdi,rax
    2435:	e8 f7 0f 00 00       	call   3431 <elem_at>
    243a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    243e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2442:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2446:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    244a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    244e:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    2451:	39 45 e8             	cmp    DWORD PTR [rbp-0x18],eax
    2454:	7d 0a                	jge    2460 <print_solution+0x57>
    2456:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    245a:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    245d:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    2460:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
    2464:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2468:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    246b:	39 45 ec             	cmp    DWORD PTR [rbp-0x14],eax
    246e:	7c b5                	jl     2425 <print_solution+0x1c>
    2470:	90                   	nop
    2471:	90                   	nop
    2472:	c9                   	leave
    2473:	c3                   	ret

0000000000002474 <main>:
    2474:	55                   	push   rbp
    2475:	48 89 e5             	mov    rbp,rsp
    2478:	48 83 ec 50          	sub    rsp,0x50
    247c:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
    247f:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
    2483:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    248a:	00 00 
    248c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2490:	31 c0                	xor    eax,eax
    2492:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [rbp-0x34],0x1
    2499:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
    249d:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    24a0:	48 89 d6             	mov    rsi,rdx
    24a3:	89 c7                	mov    edi,eax
    24a5:	e8 64 0d 00 00       	call   320e <input_through_argv>
    24aa:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
    24ad:	83 7d dc 00          	cmp    DWORD PTR [rbp-0x24],0x0
    24b1:	0f 84 c9 00 00 00    	je     2580 <main+0x10c>
    24b7:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    24bb:	48 83 c0 10          	add    rax,0x10
    24bf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    24c2:	48 8d 15 3b 1b 00 00 	lea    rdx,[rip+0x1b3b]        # 4004 <_IO_stdin_used+0x4>
    24c9:	48 89 d6             	mov    rsi,rdx
    24cc:	48 89 c7             	mov    rdi,rax
    24cf:	e8 cc fb ff ff       	call   20a0 <fopen@plt>
    24d4:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    24d8:	48 8d 55 c4          	lea    rdx,[rbp-0x3c]
    24dc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    24e0:	48 8d 0d 1f 1b 00 00 	lea    rcx,[rip+0x1b1f]        # 4006 <_IO_stdin_used+0x6>
    24e7:	48 89 ce             	mov    rsi,rcx
    24ea:	48 89 c7             	mov    rdi,rax
    24ed:	b8 00 00 00 00       	mov    eax,0x0
    24f2:	e8 49 fb ff ff       	call   2040 <__isoc99_fscanf@plt>
    24f7:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    24fa:	be 00 00 00 00       	mov    esi,0x0
    24ff:	89 c7                	mov    edi,eax
    2501:	e8 b2 04 00 00       	call   29b8 <new_graph>
    2506:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    250a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    250e:	48 8d 15 9f 3b 00 00 	lea    rdx,[rip+0x3b9f]        # 60b4 <ROOT>
    2515:	48 8d 0d ea 1a 00 00 	lea    rcx,[rip+0x1aea]        # 4006 <_IO_stdin_used+0x6>
    251c:	48 89 ce             	mov    rsi,rcx
    251f:	48 89 c7             	mov    rdi,rax
    2522:	b8 00 00 00 00       	mov    eax,0x0
    2527:	e8 14 fb ff ff       	call   2040 <__isoc99_fscanf@plt>
    252c:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    2530:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2534:	48 89 d6             	mov    rsi,rdx
    2537:	48 89 c7             	mov    rdi,rax
    253a:	e8 48 05 00 00       	call   2a87 <read_graph>
    253f:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
    2542:	8b 55 c8             	mov    edx,DWORD PTR [rbp-0x38]
    2545:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2549:	89 50 1c             	mov    DWORD PTR [rax+0x1c],edx
    254c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2550:	48 89 c7             	mov    rdi,rax
    2553:	e8 b8 fb ff ff       	call   2110 <fclose@plt>
    2558:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    255c:	48 83 c0 18          	add    rax,0x18
    2560:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2563:	48 8d 55 cc          	lea    rdx,[rbp-0x34]
    2567:	48 8d 0d 9c 1a 00 00 	lea    rcx,[rip+0x1a9c]        # 400a <_IO_stdin_used+0xa>
    256e:	48 89 ce             	mov    rsi,rcx
    2571:	48 89 c7             	mov    rdi,rax
    2574:	b8 00 00 00 00       	mov    eax,0x0
    2579:	e8 f2 fa ff ff       	call   2070 <__isoc99_sscanf@plt>
    257e:	eb 7d                	jmp    25fd <main+0x189>
    2580:	c7 45 c4 10 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x10
    2587:	c7 45 c8 40 00 00 00 	mov    DWORD PTR [rbp-0x38],0x40
    258e:	83 7d bc 01          	cmp    DWORD PTR [rbp-0x44],0x1
    2592:	7e 4c                	jle    25e0 <main+0x16c>
    2594:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2598:	48 83 c0 08          	add    rax,0x8
    259c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    259f:	48 8d 55 c4          	lea    rdx,[rbp-0x3c]
    25a3:	48 8d 0d 60 1a 00 00 	lea    rcx,[rip+0x1a60]        # 400a <_IO_stdin_used+0xa>
    25aa:	48 89 ce             	mov    rsi,rcx
    25ad:	48 89 c7             	mov    rdi,rax
    25b0:	b8 00 00 00 00       	mov    eax,0x0
    25b5:	e8 b6 fa ff ff       	call   2070 <__isoc99_sscanf@plt>
    25ba:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    25be:	48 83 c0 10          	add    rax,0x10
    25c2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25c5:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
    25c9:	48 8d 0d 3a 1a 00 00 	lea    rcx,[rip+0x1a3a]        # 400a <_IO_stdin_used+0xa>
    25d0:	48 89 ce             	mov    rsi,rcx
    25d3:	48 89 c7             	mov    rdi,rax
    25d6:	b8 00 00 00 00       	mov    eax,0x0
    25db:	e8 90 fa ff ff       	call   2070 <__isoc99_sscanf@plt>
    25e0:	8b 55 c8             	mov    edx,DWORD PTR [rbp-0x38]
    25e3:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    25e6:	89 d6                	mov    esi,edx
    25e8:	89 c7                	mov    edi,eax
    25ea:	e8 95 0b 00 00       	call   3184 <generate_new_connected_graph>
    25ef:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    25f3:	c7 05 b7 3a 00 00 00 	mov    DWORD PTR [rip+0x3ab7],0x0        # 60b4 <ROOT>
    25fa:	00 00 00 
    25fd:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
    2604:	00 
    2605:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [rbp-0x30],0x0
    260c:	eb 56                	jmp    2664 <main+0x1f0>
    260e:	b8 00 00 00 00       	mov    eax,0x0
    2613:	e8 47 0c 00 00       	call   325f <begin_timer>
    2618:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x0
    261f:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
    2626:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    262a:	48 89 c7             	mov    rdi,rax
    262d:	e8 27 fc ff ff       	call   2259 <initialize_graph>
    2632:	eb 18                	jmp    264c <main+0x1d8>
    2634:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
    2637:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    263b:	89 d6                	mov    esi,edx
    263d:	48 89 c7             	mov    rdi,rax
    2640:	e8 a1 fc ff ff       	call   22e6 <broadcast_start>
    2645:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
    2648:	83 45 d4 01          	add    DWORD PTR [rbp-0x2c],0x1
    264c:	83 7d d8 00          	cmp    DWORD PTR [rbp-0x28],0x0
    2650:	74 e2                	je     2634 <main+0x1c0>
    2652:	b8 00 00 00 00       	mov    eax,0x0
    2657:	e8 1e 0c 00 00       	call   327a <time_elapsed>
    265c:	48 01 45 e8          	add    QWORD PTR [rbp-0x18],rax
    2660:	83 45 d0 01          	add    DWORD PTR [rbp-0x30],0x1
    2664:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
    2667:	39 45 d0             	cmp    DWORD PTR [rbp-0x30],eax
    266a:	7c a2                	jl     260e <main+0x19a>
    266c:	83 7d dc 00          	cmp    DWORD PTR [rbp-0x24],0x0
    2670:	74 37                	je     26a9 <main+0x235>
    2672:	66 0f ef c0          	pxor   xmm0,xmm0
    2676:	f2 48 0f 2a 45 e8    	cvtsi2sd xmm0,QWORD PTR [rbp-0x18]
    267c:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
    267f:	66 0f ef c9          	pxor   xmm1,xmm1
    2683:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
    2687:	f2 0f 5e c1          	divsd  xmm0,xmm1
    268b:	66 48 0f 7e c0       	movq   rax,xmm0
    2690:	66 48 0f 6e c0       	movq   xmm0,rax
    2695:	48 8d 05 71 19 00 00 	lea    rax,[rip+0x1971]        # 400d <_IO_stdin_used+0xd>
    269c:	48 89 c7             	mov    rdi,rax
    269f:	b8 01 00 00 00       	mov    eax,0x1
    26a4:	e8 87 f9 ff ff       	call   2030 <printf@plt>
    26a9:	b8 00 00 00 00       	mov    eax,0x0
    26ae:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    26b2:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    26b9:	00 00 
    26bb:	74 05                	je     26c2 <main+0x24e>
    26bd:	e8 1e fa ff ff       	call   20e0 <__stack_chk_fail@plt>
    26c2:	c9                   	leave
    26c3:	c3                   	ret

00000000000026c4 <initialize_graph._omp_fn.0>:
    26c4:	55                   	push   rbp
    26c5:	48 89 e5             	mov    rbp,rsp
    26c8:	53                   	push   rbx
    26c9:	48 83 ec 58          	sub    rsp,0x58
    26cd:	48 89 7d a8          	mov    QWORD PTR [rbp-0x58],rdi
    26d1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    26d8:	00 00 
    26da:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    26de:	31 c0                	xor    eax,eax
    26e0:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    26e4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    26e7:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    26eb:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    26ef:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    26f2:	48 98                	cdqe
    26f4:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
    26f8:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
    26fc:	49 89 c8             	mov    r8,rcx
    26ff:	48 89 d1             	mov    rcx,rdx
    2702:	ba 01 00 00 00       	mov    edx,0x1
    2707:	48 89 c6             	mov    rsi,rax
    270a:	bf 00 00 00 00       	mov    edi,0x0
    270f:	e8 bc f9 ff ff       	call   20d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>
    2714:	84 c0                	test   al,al
    2716:	74 75                	je     278d <initialize_graph._omp_fn.0+0xc9>
    2718:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    271c:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
    271f:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2723:	89 c3                	mov    ebx,eax
    2725:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    2728:	48 63 d0             	movsxd rdx,eax
    272b:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    272f:	48 89 d6             	mov    rsi,rdx
    2732:	48 89 c7             	mov    rdi,rax
    2735:	e8 f7 0c 00 00       	call   3431 <elem_at>
    273a:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    273e:	bf c0 00 00 00       	mov    edi,0xc0
    2743:	e8 48 f9 ff ff       	call   2090 <malloc@plt>
    2748:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    274c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2750:	c7 00 ff ff ff ff    	mov    DWORD PTR [rax],0xffffffff
    2756:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    275a:	c7 40 04 ff ff ff ff 	mov    DWORD PTR [rax+0x4],0xffffffff
    2761:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2765:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
    2769:	48 89 50 20          	mov    QWORD PTR [rax+0x20],rdx
    276d:	83 45 bc 01          	add    DWORD PTR [rbp-0x44],0x1
    2771:	39 5d bc             	cmp    DWORD PTR [rbp-0x44],ebx
    2774:	7c af                	jl     2725 <initialize_graph._omp_fn.0+0x61>
    2776:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
    277a:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    277e:	48 89 d6             	mov    rsi,rdx
    2781:	48 89 c7             	mov    rdi,rax
    2784:	e8 d7 f8 ff ff       	call   2060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>
    2789:	84 c0                	test   al,al
    278b:	75 8b                	jne    2718 <initialize_graph._omp_fn.0+0x54>
    278d:	e8 ae f9 ff ff       	call   2140 <GOMP_loop_end_nowait@plt>
    2792:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2796:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    279d:	00 00 
    279f:	74 05                	je     27a6 <initialize_graph._omp_fn.0+0xe2>
    27a1:	e8 3a f9 ff ff       	call   20e0 <__stack_chk_fail@plt>
    27a6:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    27aa:	c9                   	leave
    27ab:	c3                   	ret

00000000000027ac <broadcast_start._omp_fn.0>:
    27ac:	55                   	push   rbp
    27ad:	48 89 e5             	mov    rbp,rsp
    27b0:	53                   	push   rbx
    27b1:	48 83 ec 78          	sub    rsp,0x78
    27b5:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
    27b9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    27c0:	00 00 
    27c2:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    27c6:	31 c0                	xor    eax,eax
    27c8:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    27cc:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    27cf:	89 45 a0             	mov    DWORD PTR [rbp-0x60],eax
    27d2:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    27d6:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    27da:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    27de:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    27e2:	8b 40 20             	mov    eax,DWORD PTR [rax+0x20]
    27e5:	89 45 a4             	mov    DWORD PTR [rbp-0x5c],eax
    27e8:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    27ec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27ef:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    27f3:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    27f7:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    27fa:	48 98                	cdqe
    27fc:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
    2800:	48 8d 55 a8          	lea    rdx,[rbp-0x58]
    2804:	49 89 c8             	mov    r8,rcx
    2807:	48 89 d1             	mov    rcx,rdx
    280a:	ba 01 00 00 00       	mov    edx,0x1
    280f:	48 89 c6             	mov    rsi,rax
    2812:	bf 00 00 00 00       	mov    edi,0x0
    2817:	e8 b4 f8 ff ff       	call   20d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>
    281c:	84 c0                	test   al,al
    281e:	0f 84 75 01 00 00    	je     2999 <broadcast_start._omp_fn.0+0x1ed>
    2824:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    2828:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
    282b:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    282f:	89 c3                	mov    ebx,eax
    2831:	8b 55 98             	mov    edx,DWORD PTR [rbp-0x68]
    2834:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
    2837:	01 c2                	add    edx,eax
    2839:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    283d:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2840:	39 c2                	cmp    edx,eax
    2842:	0f 8c ca 00 00 00    	jl     2912 <broadcast_start._omp_fn.0+0x166>
    2848:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
    284b:	48 63 d0             	movsxd rdx,eax
    284e:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    2852:	48 89 d6             	mov    rsi,rdx
    2855:	48 89 c7             	mov    rdi,rax
    2858:	e8 d4 0b 00 00       	call   3431 <elem_at>
    285d:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    2861:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2865:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2869:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    286d:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2871:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    2874:	3b 45 a4             	cmp    eax,DWORD PTR [rbp-0x5c]
    2877:	74 25                	je     289e <broadcast_start._omp_fn.0+0xf2>
    2879:	83 45 98 01          	add    DWORD PTR [rbp-0x68],0x1
    287d:	39 5d 98             	cmp    DWORD PTR [rbp-0x68],ebx
    2880:	7c af                	jl     2831 <broadcast_start._omp_fn.0+0x85>
    2882:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
    2886:	48 8d 45 a8          	lea    rax,[rbp-0x58]
    288a:	48 89 d6             	mov    rsi,rdx
    288d:	48 89 c7             	mov    rdi,rax
    2890:	e8 cb f7 ff ff       	call   2060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>
    2895:	84 c0                	test   al,al
    2897:	75 8b                	jne    2824 <broadcast_start._omp_fn.0+0x78>
    2899:	e9 fb 00 00 00       	jmp    2999 <broadcast_start._omp_fn.0+0x1ed>
    289e:	c7 45 9c 00 00 00 00 	mov    DWORD PTR [rbp-0x64],0x0
    28a5:	90                   	nop
    28a6:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    28aa:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    28ad:	3b 45 9c             	cmp    eax,DWORD PTR [rbp-0x64]
    28b0:	7e c7                	jle    2879 <broadcast_start._omp_fn.0+0xcd>
    28b2:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
    28b5:	48 63 d0             	movsxd rdx,eax
    28b8:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    28bc:	48 89 d6             	mov    rsi,rdx
    28bf:	48 89 c7             	mov    rdi,rax
    28c2:	e8 6a 0b 00 00       	call   3431 <elem_at>
    28c7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    28ca:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    28ce:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    28d2:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    28d6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    28da:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    28de:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    28e1:	85 c0                	test   eax,eax
    28e3:	78 06                	js     28eb <broadcast_start._omp_fn.0+0x13f>
    28e5:	83 45 9c 01          	add    DWORD PTR [rbp-0x64],0x1
    28e9:	eb bb                	jmp    28a6 <broadcast_start._omp_fn.0+0xfa>
    28eb:	8b 45 a4             	mov    eax,DWORD PTR [rbp-0x5c]
    28ee:	8d 50 01             	lea    edx,[rax+0x1]
    28f1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    28f5:	89 50 04             	mov    DWORD PTR [rax+0x4],edx
    28f8:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    28fc:	8b 50 28             	mov    edx,DWORD PTR [rax+0x28]
    28ff:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2903:	89 10                	mov    DWORD PTR [rax],edx
    2905:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2909:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
    2910:	eb d3                	jmp    28e5 <broadcast_start._omp_fn.0+0x139>
    2912:	8b 55 98             	mov    edx,DWORD PTR [rbp-0x68]
    2915:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
    2918:	01 d0                	add    eax,edx
    291a:	48 63 d0             	movsxd rdx,eax
    291d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2921:	48 89 d6             	mov    rsi,rdx
    2924:	48 89 c7             	mov    rdi,rax
    2927:	e8 05 0b 00 00       	call   3431 <elem_at>
    292c:	48 8b 55 88          	mov    rdx,QWORD PTR [rbp-0x78]
    2930:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
    2934:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2938:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
    293c:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
    2940:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2944:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
    2948:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    294c:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
    2950:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    2953:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2957:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    295b:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    295e:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2962:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    2966:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    2969:	3b 45 a4             	cmp    eax,DWORD PTR [rbp-0x5c]
    296c:	0f 85 d6 fe ff ff    	jne    2848 <broadcast_start._omp_fn.0+0x9c>
    2972:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2976:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    297a:	48 05 00 30 00 00    	add    rax,0x3000
    2980:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    2983:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
    2987:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    298b:	48 05 00 60 00 00    	add    rax,0x6000
    2991:	0f 18 08             	prefetcht0 BYTE PTR [rax]
    2994:	e9 af fe ff ff       	jmp    2848 <broadcast_start._omp_fn.0+0x9c>
    2999:	e8 a2 f7 ff ff       	call   2140 <GOMP_loop_end_nowait@plt>
    299e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    29a2:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    29a9:	00 00 
    29ab:	74 05                	je     29b2 <broadcast_start._omp_fn.0+0x206>
    29ad:	e8 2e f7 ff ff       	call   20e0 <__stack_chk_fail@plt>
    29b2:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    29b6:	c9                   	leave
    29b7:	c3                   	ret

00000000000029b8 <new_graph>:
    29b8:	55                   	push   rbp
    29b9:	48 89 e5             	mov    rbp,rsp
    29bc:	48 83 ec 60          	sub    rsp,0x60
    29c0:	89 7d ac             	mov    DWORD PTR [rbp-0x54],edi
    29c3:	89 75 a8             	mov    DWORD PTR [rbp-0x58],esi
    29c6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    29cd:	00 00 
    29cf:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    29d3:	31 c0                	xor    eax,eax
    29d5:	bf 30 00 00 00       	mov    edi,0x30
    29da:	e8 b1 f6 ff ff       	call   2090 <malloc@plt>
    29df:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    29e3:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    29e7:	8b 55 ac             	mov    edx,DWORD PTR [rbp-0x54]
    29ea:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
    29ed:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    29f1:	8b 55 a8             	mov    edx,DWORD PTR [rbp-0x58]
    29f4:	89 50 1c             	mov    DWORD PTR [rax+0x1c],edx
    29f7:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    29fb:	be 30 00 00 00       	mov    esi,0x30
    2a00:	48 89 c7             	mov    rdi,rax
    2a03:	e8 e6 08 00 00       	call   32ee <initialize_vector>
    2a08:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [rbp-0x4c],0x0
    2a0f:	eb 44                	jmp    2a55 <new_graph+0x9d>
    2a11:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    2a15:	be 08 00 00 00       	mov    esi,0x8
    2a1a:	48 89 c7             	mov    rdi,rax
    2a1d:	e8 cc 08 00 00       	call   32ee <initialize_vector>
    2a22:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
    2a29:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
    2a30:	00 
    2a31:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
    2a34:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    2a37:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    2a3e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2a42:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
    2a46:	48 89 d6             	mov    rsi,rdx
    2a49:	48 89 c7             	mov    rdi,rax
    2a4c:	e8 2d 09 00 00       	call   337e <append_to_vector>
    2a51:	83 45 b4 01          	add    DWORD PTR [rbp-0x4c],0x1
    2a55:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2a59:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2a5c:	39 45 b4             	cmp    DWORD PTR [rbp-0x4c],eax
    2a5f:	7c b0                	jl     2a11 <new_graph+0x59>
    2a61:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2a65:	48 c7 40 28 00 00 00 	mov    QWORD PTR [rax+0x28],0x0
    2a6c:	00 
    2a6d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2a71:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    2a75:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    2a7c:	00 00 
    2a7e:	74 05                	je     2a85 <new_graph+0xcd>
    2a80:	e8 5b f6 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2a85:	c9                   	leave
    2a86:	c3                   	ret

0000000000002a87 <read_graph>:
    2a87:	55                   	push   rbp
    2a88:	48 89 e5             	mov    rbp,rsp
    2a8b:	48 83 ec 30          	sub    rsp,0x30
    2a8f:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2a93:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    2a97:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    2a9e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2aa2:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2aa5:	83 c0 02             	add    eax,0x2
    2aa8:	48 98                	cdqe
    2aaa:	48 89 c7             	mov    rdi,rax
    2aad:	e8 de f5 ff ff       	call   2090 <malloc@plt>
    2ab2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2ab6:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    2abd:	eb 74                	jmp    2b33 <read_graph+0xac>
    2abf:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    2ac3:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2ac7:	48 8d 0d 46 15 00 00 	lea    rcx,[rip+0x1546]        # 4014 <_IO_stdin_used+0x14>
    2ace:	48 89 ce             	mov    rsi,rcx
    2ad1:	48 89 c7             	mov    rdi,rax
    2ad4:	b8 00 00 00 00       	mov    eax,0x0
    2ad9:	e8 62 f5 ff ff       	call   2040 <__isoc99_fscanf@plt>
    2ade:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2ae5:	eb 3c                	jmp    2b23 <read_graph+0x9c>
    2ae7:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    2aea:	48 63 d0             	movsxd rdx,eax
    2aed:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2af1:	48 01 d0             	add    rax,rdx
    2af4:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    2af7:	0f be c0             	movsx  eax,al
    2afa:	83 f8 30             	cmp    eax,0x30
    2afd:	74 1f                	je     2b1e <read_graph+0x97>
    2aff:	83 f8 31             	cmp    eax,0x31
    2b02:	75 1b                	jne    2b1f <read_graph+0x98>
    2b04:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
    2b08:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    2b0b:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
    2b0e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2b12:	89 ce                	mov    esi,ecx
    2b14:	48 89 c7             	mov    rdi,rax
    2b17:	e8 28 02 00 00       	call   2d44 <add_edge>
    2b1c:	eb 01                	jmp    2b1f <read_graph+0x98>
    2b1e:	90                   	nop
    2b1f:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    2b23:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2b27:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2b2a:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    2b2d:	7c b8                	jl     2ae7 <read_graph+0x60>
    2b2f:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
    2b33:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2b37:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2b3a:	39 45 f0             	cmp    DWORD PTR [rbp-0x10],eax
    2b3d:	7c 80                	jl     2abf <read_graph+0x38>
    2b3f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2b43:	48 89 c7             	mov    rdi,rax
    2b46:	e8 65 f5 ff ff       	call   20b0 <free@plt>
    2b4b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    2b4e:	89 c2                	mov    edx,eax
    2b50:	c1 ea 1f             	shr    edx,0x1f
    2b53:	01 d0                	add    eax,edx
    2b55:	d1 f8                	sar    eax,1
    2b57:	c9                   	leave
    2b58:	c3                   	ret

0000000000002b59 <read_weights>:
    2b59:	55                   	push   rbp
    2b5a:	48 89 e5             	mov    rbp,rsp
    2b5d:	48 83 ec 30          	sub    rsp,0x30
    2b61:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2b65:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    2b69:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2b70:	00 00 
    2b72:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2b76:	31 c0                	xor    eax,eax
    2b78:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    2b7f:	e9 a3 00 00 00       	jmp    2c27 <read_weights+0xce>
    2b84:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2b8b:	e9 83 00 00 00       	jmp    2c13 <read_weights+0xba>
    2b90:	48 8d 55 ec          	lea    rdx,[rbp-0x14]
    2b94:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2b98:	48 8d 0d 78 14 00 00 	lea    rcx,[rip+0x1478]        # 4017 <_IO_stdin_used+0x17>
    2b9f:	48 89 ce             	mov    rsi,rcx
    2ba2:	48 89 c7             	mov    rdi,rax
    2ba5:	b8 00 00 00 00       	mov    eax,0x0
    2baa:	e8 91 f4 ff ff       	call   2040 <__isoc99_fscanf@plt>
    2baf:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    2bb2:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
    2bb5:	74 57                	je     2c0e <read_weights+0xb5>
    2bb7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2bbb:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2bbf:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    2bc2:	48 63 d2             	movsxd rdx,edx
    2bc5:	48 c1 e2 03          	shl    rdx,0x3
    2bc9:	48 01 d0             	add    rax,rdx
    2bcc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2bcf:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
    2bd2:	48 63 d2             	movsxd rdx,edx
    2bd5:	48 c1 e2 02          	shl    rdx,0x2
    2bd9:	48 01 d0             	add    rax,rdx
    2bdc:	8b 00                	mov    eax,DWORD PTR [rax]
    2bde:	85 c0                	test   eax,eax
    2be0:	74 2d                	je     2c0f <read_weights+0xb6>
    2be2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2be6:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2bea:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
    2bed:	48 63 d2             	movsxd rdx,edx
    2bf0:	48 c1 e2 03          	shl    rdx,0x3
    2bf4:	48 01 d0             	add    rax,rdx
    2bf7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2bfa:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    2bfd:	48 63 d2             	movsxd rdx,edx
    2c00:	48 c1 e2 02          	shl    rdx,0x2
    2c04:	48 01 c2             	add    rdx,rax
    2c07:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    2c0a:	89 02                	mov    DWORD PTR [rdx],eax
    2c0c:	eb 01                	jmp    2c0f <read_weights+0xb6>
    2c0e:	90                   	nop
    2c0f:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    2c13:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2c17:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2c1a:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    2c1d:	0f 8c 6d ff ff ff    	jl     2b90 <read_weights+0x37>
    2c23:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
    2c27:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2c2b:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2c2e:	39 45 f0             	cmp    DWORD PTR [rbp-0x10],eax
    2c31:	0f 8c 4d ff ff ff    	jl     2b84 <read_weights+0x2b>
    2c37:	90                   	nop
    2c38:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2c3c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2c43:	00 00 
    2c45:	74 05                	je     2c4c <read_weights+0xf3>
    2c47:	e8 94 f4 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2c4c:	c9                   	leave
    2c4d:	c3                   	ret

0000000000002c4e <print_graph>:
    2c4e:	55                   	push   rbp
    2c4f:	48 89 e5             	mov    rbp,rsp
    2c52:	48 83 ec 20          	sub    rsp,0x20
    2c56:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    2c5a:	48 8d 05 b9 13 00 00 	lea    rax,[rip+0x13b9]        # 401a <_IO_stdin_used+0x1a>
    2c61:	48 89 c7             	mov    rdi,rax
    2c64:	b8 00 00 00 00       	mov    eax,0x0
    2c69:	e8 c2 f3 ff ff       	call   2030 <printf@plt>
    2c6e:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2c75:	eb 1d                	jmp    2c94 <print_graph+0x46>
    2c77:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    2c7a:	89 c6                	mov    esi,eax
    2c7c:	48 8d 05 9c 13 00 00 	lea    rax,[rip+0x139c]        # 401f <_IO_stdin_used+0x1f>
    2c83:	48 89 c7             	mov    rdi,rax
    2c86:	b8 00 00 00 00       	mov    eax,0x0
    2c8b:	e8 a0 f3 ff ff       	call   2030 <printf@plt>
    2c90:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    2c94:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2c98:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2c9b:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    2c9e:	7c d7                	jl     2c77 <print_graph+0x29>
    2ca0:	bf 0a 00 00 00       	mov    edi,0xa
    2ca5:	e8 d6 f3 ff ff       	call   2080 <putchar@plt>
    2caa:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    2cb1:	eb 7d                	jmp    2d30 <print_graph+0xe2>
    2cb3:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    2cb6:	89 c6                	mov    esi,eax
    2cb8:	48 8d 05 60 13 00 00 	lea    rax,[rip+0x1360]        # 401f <_IO_stdin_used+0x1f>
    2cbf:	48 89 c7             	mov    rdi,rax
    2cc2:	b8 00 00 00 00       	mov    eax,0x0
    2cc7:	e8 64 f3 ff ff       	call   2030 <printf@plt>
    2ccc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    2cd3:	eb 41                	jmp    2d16 <print_graph+0xc8>
    2cd5:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2cd9:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2cdd:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
    2ce0:	48 63 d2             	movsxd rdx,edx
    2ce3:	48 c1 e2 03          	shl    rdx,0x3
    2ce7:	48 01 d0             	add    rax,rdx
    2cea:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ced:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    2cf0:	48 63 d2             	movsxd rdx,edx
    2cf3:	48 c1 e2 02          	shl    rdx,0x2
    2cf7:	48 01 d0             	add    rax,rdx
    2cfa:	8b 00                	mov    eax,DWORD PTR [rax]
    2cfc:	89 c6                	mov    esi,eax
    2cfe:	48 8d 05 1a 13 00 00 	lea    rax,[rip+0x131a]        # 401f <_IO_stdin_used+0x1f>
    2d05:	48 89 c7             	mov    rdi,rax
    2d08:	b8 00 00 00 00       	mov    eax,0x0
    2d0d:	e8 1e f3 ff ff       	call   2030 <printf@plt>
    2d12:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    2d16:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2d1a:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2d1d:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
    2d20:	7c b3                	jl     2cd5 <print_graph+0x87>
    2d22:	bf 0a 00 00 00       	mov    edi,0xa
    2d27:	e8 54 f3 ff ff       	call   2080 <putchar@plt>
    2d2c:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    2d30:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2d34:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2d37:	39 45 f8             	cmp    DWORD PTR [rbp-0x8],eax
    2d3a:	0f 8c 73 ff ff ff    	jl     2cb3 <print_graph+0x65>
    2d40:	90                   	nop
    2d41:	90                   	nop
    2d42:	c9                   	leave
    2d43:	c3                   	ret

0000000000002d44 <add_edge>:
    2d44:	55                   	push   rbp
    2d45:	48 89 e5             	mov    rbp,rsp
    2d48:	48 83 ec 30          	sub    rsp,0x30
    2d4c:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2d50:	89 75 d4             	mov    DWORD PTR [rbp-0x2c],esi
    2d53:	89 55 d0             	mov    DWORD PTR [rbp-0x30],edx
    2d56:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2d5d:	00 00 
    2d5f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2d63:	31 c0                	xor    eax,eax
    2d65:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
    2d68:	48 63 d0             	movsxd rdx,eax
    2d6b:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2d6f:	48 89 d6             	mov    rsi,rdx
    2d72:	48 89 c7             	mov    rdi,rax
    2d75:	e8 b7 06 00 00       	call   3431 <elem_at>
    2d7a:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    2d7e:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
    2d81:	48 63 d0             	movsxd rdx,eax
    2d84:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2d88:	48 89 d6             	mov    rsi,rdx
    2d8b:	48 89 c7             	mov    rdi,rax
    2d8e:	e8 9e 06 00 00       	call   3431 <elem_at>
    2d93:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    2d97:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2d9b:	48 89 c2             	mov    rdx,rax
    2d9e:	48 8d 45 f0          	lea    rax,[rbp-0x10]
    2da2:	48 89 c6             	mov    rsi,rax
    2da5:	48 89 d7             	mov    rdi,rdx
    2da8:	e8 d1 05 00 00       	call   337e <append_to_vector>
    2dad:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2db1:	48 89 c2             	mov    rdx,rax
    2db4:	48 8d 45 e8          	lea    rax,[rbp-0x18]
    2db8:	48 89 c6             	mov    rsi,rax
    2dbb:	48 89 d7             	mov    rdi,rdx
    2dbe:	e8 bb 05 00 00       	call   337e <append_to_vector>
    2dc3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2dc7:	8b 50 18             	mov    edx,DWORD PTR [rax+0x18]
    2dca:	83 c2 01             	add    edx,0x1
    2dcd:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
    2dd0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2dd4:	8b 50 18             	mov    edx,DWORD PTR [rax+0x18]
    2dd7:	83 c2 01             	add    edx,0x1
    2dda:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
    2ddd:	90                   	nop
    2dde:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2de2:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2de9:	00 00 
    2deb:	74 05                	je     2df2 <add_edge+0xae>
    2ded:	e8 ee f2 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2df2:	c9                   	leave
    2df3:	c3                   	ret

0000000000002df4 <free_graph>:
    2df4:	55                   	push   rbp
    2df5:	48 89 e5             	mov    rbp,rsp
    2df8:	48 83 ec 20          	sub    rsp,0x20
    2dfc:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    2e00:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e04:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2e08:	48 85 c0             	test   rax,rax
    2e0b:	74 49                	je     2e56 <free_graph+0x62>
    2e0d:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    2e14:	eb 24                	jmp    2e3a <free_graph+0x46>
    2e16:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e1a:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2e1e:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    2e21:	48 63 d2             	movsxd rdx,edx
    2e24:	48 c1 e2 03          	shl    rdx,0x3
    2e28:	48 01 d0             	add    rax,rdx
    2e2b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e2e:	48 89 c7             	mov    rdi,rax
    2e31:	e8 7a f2 ff ff       	call   20b0 <free@plt>
    2e36:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    2e3a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e3e:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2e41:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
    2e44:	7c d0                	jl     2e16 <free_graph+0x22>
    2e46:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e4a:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2e4e:	48 89 c7             	mov    rdi,rax
    2e51:	e8 5a f2 ff ff       	call   20b0 <free@plt>
    2e56:	90                   	nop
    2e57:	c9                   	leave
    2e58:	c3                   	ret

0000000000002e59 <is_connected>:
    2e59:	55                   	push   rbp
    2e5a:	48 89 e5             	mov    rbp,rsp
    2e5d:	48 83 ec 50          	sub    rsp,0x50
    2e61:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
    2e65:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2e6c:	00 00 
    2e6e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2e72:	31 c0                	xor    eax,eax
    2e74:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2e78:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2e7b:	48 98                	cdqe
    2e7d:	be 04 00 00 00       	mov    esi,0x4
    2e82:	48 89 c7             	mov    rdi,rax
    2e85:	e8 76 f2 ff ff       	call   2100 <calloc@plt>
    2e8a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    2e8e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2e92:	be 00 00 00 00       	mov    esi,0x0
    2e97:	48 89 c7             	mov    rdi,rax
    2e9a:	e8 92 05 00 00       	call   3431 <elem_at>
    2e9f:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    2ea3:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2ea7:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    2eaa:	48 98                	cdqe
    2eac:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2eb3:	00 
    2eb4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2eb8:	48 01 d0             	add    rax,rdx
    2ebb:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    2ec1:	bf 08 00 00 00       	mov    edi,0x8
    2ec6:	e8 80 04 00 00       	call   334b <new_vector>
    2ecb:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    2ecf:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
    2ed3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2ed7:	48 89 d6             	mov    rsi,rdx
    2eda:	48 89 c7             	mov    rdi,rax
    2edd:	e8 9c 04 00 00       	call   337e <append_to_vector>
    2ee2:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [rbp-0x40],0x0
    2ee9:	e9 a7 00 00 00       	jmp    2f95 <is_connected+0x13c>
    2eee:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
    2ef1:	48 63 d0             	movsxd rdx,eax
    2ef4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2ef8:	48 89 d6             	mov    rsi,rdx
    2efb:	48 89 c7             	mov    rdi,rax
    2efe:	e8 2e 05 00 00       	call   3431 <elem_at>
    2f03:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f06:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    2f0a:	83 45 c0 01          	add    DWORD PTR [rbp-0x40],0x1
    2f0e:	c7 45 c4 00 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x0
    2f15:	eb 72                	jmp    2f89 <is_connected+0x130>
    2f17:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    2f1a:	48 63 d0             	movsxd rdx,eax
    2f1d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2f21:	48 89 d6             	mov    rsi,rdx
    2f24:	48 89 c7             	mov    rdi,rax
    2f27:	e8 05 05 00 00       	call   3431 <elem_at>
    2f2c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f2f:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    2f33:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2f37:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    2f3a:	48 98                	cdqe
    2f3c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2f43:	00 
    2f44:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2f48:	48 01 d0             	add    rax,rdx
    2f4b:	8b 00                	mov    eax,DWORD PTR [rax]
    2f4d:	85 c0                	test   eax,eax
    2f4f:	7f 33                	jg     2f84 <is_connected+0x12b>
    2f51:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2f55:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    2f58:	48 98                	cdqe
    2f5a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2f61:	00 
    2f62:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2f66:	48 01 d0             	add    rax,rdx
    2f69:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    2f6f:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
    2f73:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2f77:	48 89 d6             	mov    rsi,rdx
    2f7a:	48 89 c7             	mov    rdi,rax
    2f7d:	e8 fc 03 00 00       	call   337e <append_to_vector>
    2f82:	eb 01                	jmp    2f85 <is_connected+0x12c>
    2f84:	90                   	nop
    2f85:	83 45 c4 01          	add    DWORD PTR [rbp-0x3c],0x1
    2f89:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2f8d:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2f90:	39 45 c4             	cmp    DWORD PTR [rbp-0x3c],eax
    2f93:	7c 82                	jl     2f17 <is_connected+0xbe>
    2f95:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2f99:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    2f9c:	39 45 c0             	cmp    DWORD PTR [rbp-0x40],eax
    2f9f:	0f 8c 49 ff ff ff    	jl     2eee <is_connected+0x95>
    2fa5:	c7 45 c8 01 00 00 00 	mov    DWORD PTR [rbp-0x38],0x1
    2fac:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
    2fb3:	eb 25                	jmp    2fda <is_connected+0x181>
    2fb5:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
    2fb8:	48 98                	cdqe
    2fba:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2fc1:	00 
    2fc2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2fc6:	48 01 d0             	add    rax,rdx
    2fc9:	8b 00                	mov    eax,DWORD PTR [rax]
    2fcb:	85 c0                	test   eax,eax
    2fcd:	75 07                	jne    2fd6 <is_connected+0x17d>
    2fcf:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
    2fd6:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
    2fda:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2fde:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2fe1:	39 45 cc             	cmp    DWORD PTR [rbp-0x34],eax
    2fe4:	7c cf                	jl     2fb5 <is_connected+0x15c>
    2fe6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2fea:	48 89 c7             	mov    rdi,rax
    2fed:	e8 64 04 00 00       	call   3456 <free_vector>
    2ff2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2ff6:	48 89 c7             	mov    rdi,rax
    2ff9:	e8 b2 f0 ff ff       	call   20b0 <free@plt>
    2ffe:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
    3001:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    3005:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    300c:	00 00 
    300e:	74 05                	je     3015 <is_connected+0x1bc>
    3010:	e8 cb f0 ff ff       	call   20e0 <__stack_chk_fail@plt>
    3015:	c9                   	leave
    3016:	c3                   	ret

0000000000003017 <generate_new_graph>:
    3017:	55                   	push   rbp
    3018:	48 89 e5             	mov    rbp,rsp
    301b:	48 83 ec 30          	sub    rsp,0x30
    301f:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
    3022:	89 75 d8             	mov    DWORD PTR [rbp-0x28],esi
    3025:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    302c:	00 00 
    302e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    3032:	31 c0                	xor    eax,eax
    3034:	8b 55 d8             	mov    edx,DWORD PTR [rbp-0x28]
    3037:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    303a:	89 d6                	mov    esi,edx
    303c:	89 c7                	mov    edi,eax
    303e:	e8 75 f9 ff ff       	call   29b8 <new_graph>
    3043:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    3047:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    304e:	e9 0b 01 00 00       	jmp    315e <generate_new_graph+0x147>
    3053:	e8 d8 f0 ff ff       	call   2130 <rand@plt>
    3058:	99                   	cdq
    3059:	f7 7d dc             	idiv   DWORD PTR [rbp-0x24]
    305c:	89 d0                	mov    eax,edx
    305e:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    3061:	e8 ca f0 ff ff       	call   2130 <rand@plt>
    3066:	99                   	cdq
    3067:	f7 7d dc             	idiv   DWORD PTR [rbp-0x24]
    306a:	89 d0                	mov    eax,edx
    306c:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    306f:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    3072:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    3075:	39 c2                	cmp    edx,eax
    3077:	0f 84 dd 00 00 00    	je     315a <generate_new_graph+0x143>
    307d:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    3080:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    3083:	39 c2                	cmp    edx,eax
    3085:	7e 13                	jle    309a <generate_new_graph+0x83>
    3087:	48 8d 55 e8          	lea    rdx,[rbp-0x18]
    308b:	48 8d 45 e4          	lea    rax,[rbp-0x1c]
    308f:	48 89 d6             	mov    rsi,rdx
    3092:	48 89 c7             	mov    rdi,rax
    3095:	e8 47 01 00 00       	call   31e1 <swap>
    309a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    309e:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    30a2:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    30a5:	48 63 d2             	movsxd rdx,edx
    30a8:	48 c1 e2 03          	shl    rdx,0x3
    30ac:	48 01 d0             	add    rax,rdx
    30af:	48 8b 00             	mov    rax,QWORD PTR [rax]
    30b2:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
    30b5:	48 63 d2             	movsxd rdx,edx
    30b8:	48 c1 e2 02          	shl    rdx,0x2
    30bc:	48 01 d0             	add    rax,rdx
    30bf:	8b 00                	mov    eax,DWORD PTR [rax]
    30c1:	85 c0                	test   eax,eax
    30c3:	0f 85 94 00 00 00    	jne    315d <generate_new_graph+0x146>
    30c9:	e8 62 f0 ff ff       	call   2130 <rand@plt>
    30ce:	48 63 d0             	movsxd rdx,eax
    30d1:	48 69 d2 1f 85 eb 51 	imul   rdx,rdx,0x51eb851f
    30d8:	48 c1 ea 20          	shr    rdx,0x20
    30dc:	c1 fa 05             	sar    edx,0x5
    30df:	89 c1                	mov    ecx,eax
    30e1:	c1 f9 1f             	sar    ecx,0x1f
    30e4:	29 ca                	sub    edx,ecx
    30e6:	6b ca 64             	imul   ecx,edx,0x64
    30e9:	29 c8                	sub    eax,ecx
    30eb:	89 c2                	mov    edx,eax
    30ed:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    30f1:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    30f5:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
    30f8:	48 63 c9             	movsxd rcx,ecx
    30fb:	48 c1 e1 03          	shl    rcx,0x3
    30ff:	48 01 c8             	add    rax,rcx
    3102:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3105:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    3108:	48 63 c9             	movsxd rcx,ecx
    310b:	48 c1 e1 02          	shl    rcx,0x2
    310f:	48 01 c8             	add    rax,rcx
    3112:	83 c2 01             	add    edx,0x1
    3115:	89 10                	mov    DWORD PTR [rax],edx
    3117:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    311b:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    311f:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    3122:	48 63 c9             	movsxd rcx,ecx
    3125:	48 c1 e1 03          	shl    rcx,0x3
    3129:	48 01 ca             	add    rdx,rcx
    312c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    312f:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
    3132:	48 63 c9             	movsxd rcx,ecx
    3135:	48 c1 e1 02          	shl    rcx,0x2
    3139:	48 01 ca             	add    rdx,rcx
    313c:	8b 00                	mov    eax,DWORD PTR [rax]
    313e:	89 02                	mov    DWORD PTR [rdx],eax
    3140:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
    3143:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    3146:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    314a:	89 ce                	mov    esi,ecx
    314c:	48 89 c7             	mov    rdi,rax
    314f:	e8 f0 fb ff ff       	call   2d44 <add_edge>
    3154:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
    3158:	eb 04                	jmp    315e <generate_new_graph+0x147>
    315a:	90                   	nop
    315b:	eb 01                	jmp    315e <generate_new_graph+0x147>
    315d:	90                   	nop
    315e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    3161:	3b 45 d8             	cmp    eax,DWORD PTR [rbp-0x28]
    3164:	0f 8c e9 fe ff ff    	jl     3053 <generate_new_graph+0x3c>
    316a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    316e:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    3172:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    3179:	00 00 
    317b:	74 05                	je     3182 <generate_new_graph+0x16b>
    317d:	e8 5e ef ff ff       	call   20e0 <__stack_chk_fail@plt>
    3182:	c9                   	leave
    3183:	c3                   	ret

0000000000003184 <generate_new_connected_graph>:
    3184:	55                   	push   rbp
    3185:	48 89 e5             	mov    rbp,rsp
    3188:	48 83 ec 20          	sub    rsp,0x20
    318c:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    318f:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
    3192:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
    3199:	00 
    319a:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    31a1:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    31a5:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
    31aa:	74 0c                	je     31b8 <generate_new_connected_graph+0x34>
    31ac:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31b0:	48 89 c7             	mov    rdi,rax
    31b3:	e8 3c fc ff ff       	call   2df4 <free_graph>
    31b8:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
    31bb:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    31be:	89 d6                	mov    esi,edx
    31c0:	89 c7                	mov    edi,eax
    31c2:	e8 50 fe ff ff       	call   3017 <generate_new_graph>
    31c7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    31cb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31cf:	48 89 c7             	mov    rdi,rax
    31d2:	e8 82 fc ff ff       	call   2e59 <is_connected>
    31d7:	85 c0                	test   eax,eax
    31d9:	74 c6                	je     31a1 <generate_new_connected_graph+0x1d>
    31db:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31df:	c9                   	leave
    31e0:	c3                   	ret

00000000000031e1 <swap>:
    31e1:	55                   	push   rbp
    31e2:	48 89 e5             	mov    rbp,rsp
    31e5:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    31e9:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    31ed:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    31f1:	8b 00                	mov    eax,DWORD PTR [rax]
    31f3:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    31f6:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    31fa:	8b 10                	mov    edx,DWORD PTR [rax]
    31fc:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    3200:	89 10                	mov    DWORD PTR [rax],edx
    3202:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    3206:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    3209:	89 10                	mov    DWORD PTR [rax],edx
    320b:	90                   	nop
    320c:	5d                   	pop    rbp
    320d:	c3                   	ret

000000000000320e <input_through_argv>:
    320e:	55                   	push   rbp
    320f:	48 89 e5             	mov    rbp,rsp
    3212:	48 83 ec 10          	sub    rsp,0x10
    3216:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    3219:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    321d:	83 7d fc 02          	cmp    DWORD PTR [rbp-0x4],0x2
    3221:	7f 07                	jg     322a <input_through_argv+0x1c>
    3223:	b8 00 00 00 00       	mov    eax,0x0
    3228:	eb 33                	jmp    325d <input_through_argv+0x4f>
    322a:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
    322e:	75 28                	jne    3258 <input_through_argv+0x4a>
    3230:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    3234:	48 83 c0 08          	add    rax,0x8
    3238:	48 8b 00             	mov    rax,QWORD PTR [rax]
    323b:	48 8d 15 e2 0d 00 00 	lea    rdx,[rip+0xde2]        # 4024 <_IO_stdin_used+0x24>
    3242:	48 89 d6             	mov    rsi,rdx
    3245:	48 89 c7             	mov    rdi,rax
    3248:	e8 a3 ee ff ff       	call   20f0 <strcmp@plt>
    324d:	85 c0                	test   eax,eax
    324f:	75 07                	jne    3258 <input_through_argv+0x4a>
    3251:	b8 02 00 00 00       	mov    eax,0x2
    3256:	eb 05                	jmp    325d <input_through_argv+0x4f>
    3258:	b8 00 00 00 00       	mov    eax,0x0
    325d:	c9                   	leave
    325e:	c3                   	ret

000000000000325f <begin_timer>:
    325f:	55                   	push   rbp
    3260:	48 89 e5             	mov    rbp,rsp
    3263:	48 8d 05 56 2e 00 00 	lea    rax,[rip+0x2e56]        # 60c0 <start_time>
    326a:	48 89 c6             	mov    rsi,rax
    326d:	bf 01 00 00 00       	mov    edi,0x1
    3272:	e8 d9 ed ff ff       	call   2050 <clock_gettime@plt>
    3277:	90                   	nop
    3278:	5d                   	pop    rbp
    3279:	c3                   	ret

000000000000327a <time_elapsed>:
    327a:	55                   	push   rbp
    327b:	48 89 e5             	mov    rbp,rsp
    327e:	48 83 ec 30          	sub    rsp,0x30
    3282:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    3289:	00 00 
    328b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    328f:	31 c0                	xor    eax,eax
    3291:	48 8d 45 e0          	lea    rax,[rbp-0x20]
    3295:	48 89 c6             	mov    rsi,rax
    3298:	bf 01 00 00 00       	mov    edi,0x1
    329d:	e8 ae ed ff ff       	call   2050 <clock_gettime@plt>
    32a2:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
    32a6:	48 8b 05 13 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e13]        # 60c0 <start_time>
    32ad:	48 29 c2             	sub    rdx,rax
    32b0:	48 89 55 d0          	mov    QWORD PTR [rbp-0x30],rdx
    32b4:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    32b8:	48 8b 05 09 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e09]        # 60c8 <start_time+0x8>
    32bf:	48 29 c2             	sub    rdx,rax
    32c2:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    32c6:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    32ca:	48 69 d0 00 ca 9a 3b 	imul   rdx,rax,0x3b9aca00
    32d1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    32d5:	48 01 d0             	add    rax,rdx
    32d8:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    32dc:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    32e3:	00 00 
    32e5:	74 05                	je     32ec <time_elapsed+0x72>
    32e7:	e8 f4 ed ff ff       	call   20e0 <__stack_chk_fail@plt>
    32ec:	c9                   	leave
    32ed:	c3                   	ret

00000000000032ee <initialize_vector>:
    32ee:	55                   	push   rbp
    32ef:	48 89 e5             	mov    rbp,rsp
    32f2:	48 83 ec 10          	sub    rsp,0x10
    32f6:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    32fa:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    32fe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3302:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    3306:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    330a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    330e:	c7 40 10 10 00 00 00 	mov    DWORD PTR [rax+0x10],0x10
    3315:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3319:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
    331c:	48 63 d0             	movsxd rdx,eax
    331f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3323:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    3327:	48 0f af c2          	imul   rax,rdx
    332b:	48 89 c7             	mov    rdi,rax
    332e:	e8 5d ed ff ff       	call   2090 <malloc@plt>
    3333:	48 89 c2             	mov    rdx,rax
    3336:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    333a:	48 89 10             	mov    QWORD PTR [rax],rdx
    333d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3341:	c7 40 14 00 00 00 00 	mov    DWORD PTR [rax+0x14],0x0
    3348:	90                   	nop
    3349:	c9                   	leave
    334a:	c3                   	ret

000000000000334b <new_vector>:
    334b:	55                   	push   rbp
    334c:	48 89 e5             	mov    rbp,rsp
    334f:	48 83 ec 20          	sub    rsp,0x20
    3353:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    3357:	bf 18 00 00 00       	mov    edi,0x18
    335c:	e8 2f ed ff ff       	call   2090 <malloc@plt>
    3361:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    3365:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    3369:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    336d:	48 89 d6             	mov    rsi,rdx
    3370:	48 89 c7             	mov    rdi,rax
    3373:	e8 76 ff ff ff       	call   32ee <initialize_vector>
    3378:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    337c:	c9                   	leave
    337d:	c3                   	ret

000000000000337e <append_to_vector>:
    337e:	55                   	push   rbp
    337f:	48 89 e5             	mov    rbp,rsp
    3382:	48 83 ec 10          	sub    rsp,0x10
    3386:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    338a:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    338e:	eb 40                	jmp    33d0 <append_to_vector+0x52>
    3390:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3394:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
    3397:	8d 14 00             	lea    edx,[rax+rax*1]
    339a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    339e:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
    33a1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33a5:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
    33a8:	48 63 d0             	movsxd rdx,eax
    33ab:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33af:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    33b3:	48 0f af d0          	imul   rdx,rax
    33b7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    33be:	48 89 d6             	mov    rsi,rdx
    33c1:	48 89 c7             	mov    rdi,rax
    33c4:	e8 57 ed ff ff       	call   2120 <realloc@plt>
    33c9:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    33cd:	48 89 02             	mov    QWORD PTR [rdx],rax
    33d0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33d4:	8b 50 10             	mov    edx,DWORD PTR [rax+0x10]
    33d7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33db:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    33de:	83 c0 01             	add    eax,0x1
    33e1:	39 c2                	cmp    edx,eax
    33e3:	7e ab                	jle    3390 <append_to_vector+0x12>
    33e5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33e9:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
    33ed:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33f1:	48 8b 30             	mov    rsi,QWORD PTR [rax]
    33f4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    33f8:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    33fb:	48 63 c8             	movsxd rcx,eax
    33fe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3402:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    3406:	48 0f af c1          	imul   rax,rcx
    340a:	48 8d 0c 06          	lea    rcx,[rsi+rax*1]
    340e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    3412:	48 89 c6             	mov    rsi,rax
    3415:	48 89 cf             	mov    rdi,rcx
    3418:	e8 33 ed ff ff       	call   2150 <memcpy@plt>
    341d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3421:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    3424:	8d 50 01             	lea    edx,[rax+0x1]
    3427:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    342b:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
    342e:	90                   	nop
    342f:	c9                   	leave
    3430:	c3                   	ret

0000000000003431 <elem_at>:
    3431:	55                   	push   rbp
    3432:	48 89 e5             	mov    rbp,rsp
    3435:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    3439:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    343d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3441:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3444:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3448:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    344c:	48 0f af 45 f0       	imul   rax,QWORD PTR [rbp-0x10]
    3451:	48 01 d0             	add    rax,rdx
    3454:	5d                   	pop    rbp
    3455:	c3                   	ret

0000000000003456 <free_vector>:
    3456:	55                   	push   rbp
    3457:	48 89 e5             	mov    rbp,rsp
    345a:	48 83 ec 10          	sub    rsp,0x10
    345e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    3462:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3466:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3469:	48 89 c7             	mov    rdi,rax
    346c:	e8 3f ec ff ff       	call   20b0 <free@plt>
    3471:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3475:	48 89 c7             	mov    rdi,rax
    3478:	e8 33 ec ff ff       	call   20b0 <free@plt>
    347d:	90                   	nop
    347e:	c9                   	leave
    347f:	c3                   	ret

Disassembly of section .fini:

0000000000003480 <_fini>:
    3480:	f3 0f 1e fa          	endbr64
    3484:	48 83 ec 08          	sub    rsp,0x8
    3488:	48 83 c4 08          	add    rsp,0x8
    348c:	c3                   	ret
