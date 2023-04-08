
bfs_dijkstra:     file format elf64-x86-64


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
    2178:	48 8d 3d 4a 02 00 00 	lea    rdi,[rip+0x24a]        # 23c9 <main>
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
    228d:	48 8d 05 85 03 00 00 	lea    rax,[rip+0x385]        # 2619 <initialize_graph._omp_fn.0>
    2294:	48 89 c7             	mov    rdi,rax
    2297:	e8 24 fe ff ff       	call   20c0 <GOMP_parallel@plt>
    229c:	8b 05 12 3e 00 00    	mov    eax,DWORD PTR [rip+0x3e12]        # 60b4 <ROOT>
    22a2:	48 63 d0             	movsxd rdx,eax
    22a5:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    22a9:	48 89 d6             	mov    rsi,rdx
    22ac:	48 89 c7             	mov    rdi,rax
    22af:	e8 1b 10 00 00       	call   32cf <elem_at>
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
    22ea:	48 83 ec 40          	sub    rsp,0x40
    22ee:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
    22f2:	89 75 c4             	mov    DWORD PTR [rbp-0x3c],esi
    22f5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    22fc:	00 00 
    22fe:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2302:	31 c0                	xor    eax,eax
    2304:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
    230b:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    230e:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    2311:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2315:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    2319:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    231c:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
    231f:	48 8d 45 e0          	lea    rax,[rbp-0x20]
    2323:	b9 00 00 00 00       	mov    ecx,0x0
    2328:	ba 00 00 00 00       	mov    edx,0x0
    232d:	48 89 c6             	mov    rsi,rax
    2330:	48 8d 05 ca 03 00 00 	lea    rax,[rip+0x3ca]        # 2701 <broadcast_start._omp_fn.0>
    2337:	48 89 c7             	mov    rdi,rax
    233a:	e8 81 fd ff ff       	call   20c0 <GOMP_parallel@plt>
    233f:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    2342:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
    2345:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    2348:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    234c:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    2353:	00 00 
    2355:	74 05                	je     235c <broadcast_start+0x76>
    2357:	e8 84 fd ff ff       	call   20e0 <__stack_chk_fail@plt>
    235c:	c9                   	leave
    235d:	c3                   	ret

000000000000235e <print_solution>:
    235e:	55                   	push   rbp
    235f:	48 89 e5             	mov    rbp,rsp
    2362:	48 83 ec 30          	sub    rsp,0x30
    2366:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    236a:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
    2371:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    2378:	eb 3f                	jmp    23b9 <print_solution+0x5b>
    237a:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    237d:	48 63 d0             	movsxd rdx,eax
    2380:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2384:	48 89 d6             	mov    rsi,rdx
    2387:	48 89 c7             	mov    rdi,rax
    238a:	e8 40 0f 00 00       	call   32cf <elem_at>
    238f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    2393:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2397:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    239b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    239f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    23a3:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    23a6:	39 45 e8             	cmp    DWORD PTR [rbp-0x18],eax
    23a9:	7d 0a                	jge    23b5 <print_solution+0x57>
    23ab:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    23af:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    23b2:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    23b5:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
    23b9:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    23bd:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    23c0:	39 45 ec             	cmp    DWORD PTR [rbp-0x14],eax
    23c3:	7c b5                	jl     237a <print_solution+0x1c>
    23c5:	90                   	nop
    23c6:	90                   	nop
    23c7:	c9                   	leave
    23c8:	c3                   	ret

00000000000023c9 <main>:
    23c9:	55                   	push   rbp
    23ca:	48 89 e5             	mov    rbp,rsp
    23cd:	48 83 ec 50          	sub    rsp,0x50
    23d1:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
    23d4:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
    23d8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    23df:	00 00 
    23e1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    23e5:	31 c0                	xor    eax,eax
    23e7:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [rbp-0x34],0x1
    23ee:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
    23f2:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    23f5:	48 89 d6             	mov    rsi,rdx
    23f8:	89 c7                	mov    edi,eax
    23fa:	e8 ad 0c 00 00       	call   30ac <input_through_argv>
    23ff:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
    2402:	83 7d dc 00          	cmp    DWORD PTR [rbp-0x24],0x0
    2406:	0f 84 c9 00 00 00    	je     24d5 <main+0x10c>
    240c:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2410:	48 83 c0 10          	add    rax,0x10
    2414:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2417:	48 8d 15 e6 1b 00 00 	lea    rdx,[rip+0x1be6]        # 4004 <_IO_stdin_used+0x4>
    241e:	48 89 d6             	mov    rsi,rdx
    2421:	48 89 c7             	mov    rdi,rax
    2424:	e8 77 fc ff ff       	call   20a0 <fopen@plt>
    2429:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    242d:	48 8d 55 c4          	lea    rdx,[rbp-0x3c]
    2431:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2435:	48 8d 0d ca 1b 00 00 	lea    rcx,[rip+0x1bca]        # 4006 <_IO_stdin_used+0x6>
    243c:	48 89 ce             	mov    rsi,rcx
    243f:	48 89 c7             	mov    rdi,rax
    2442:	b8 00 00 00 00       	mov    eax,0x0
    2447:	e8 f4 fb ff ff       	call   2040 <__isoc99_fscanf@plt>
    244c:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    244f:	be 00 00 00 00       	mov    esi,0x0
    2454:	89 c7                	mov    edi,eax
    2456:	e8 fb 03 00 00       	call   2856 <new_graph>
    245b:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    245f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2463:	48 8d 15 4a 3c 00 00 	lea    rdx,[rip+0x3c4a]        # 60b4 <ROOT>
    246a:	48 8d 0d 95 1b 00 00 	lea    rcx,[rip+0x1b95]        # 4006 <_IO_stdin_used+0x6>
    2471:	48 89 ce             	mov    rsi,rcx
    2474:	48 89 c7             	mov    rdi,rax
    2477:	b8 00 00 00 00       	mov    eax,0x0
    247c:	e8 bf fb ff ff       	call   2040 <__isoc99_fscanf@plt>
    2481:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    2485:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2489:	48 89 d6             	mov    rsi,rdx
    248c:	48 89 c7             	mov    rdi,rax
    248f:	e8 91 04 00 00       	call   2925 <read_graph>
    2494:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
    2497:	8b 55 c8             	mov    edx,DWORD PTR [rbp-0x38]
    249a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    249e:	89 50 1c             	mov    DWORD PTR [rax+0x1c],edx
    24a1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    24a5:	48 89 c7             	mov    rdi,rax
    24a8:	e8 63 fc ff ff       	call   2110 <fclose@plt>
    24ad:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    24b1:	48 83 c0 18          	add    rax,0x18
    24b5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    24b8:	48 8d 55 cc          	lea    rdx,[rbp-0x34]
    24bc:	48 8d 0d 47 1b 00 00 	lea    rcx,[rip+0x1b47]        # 400a <_IO_stdin_used+0xa>
    24c3:	48 89 ce             	mov    rsi,rcx
    24c6:	48 89 c7             	mov    rdi,rax
    24c9:	b8 00 00 00 00       	mov    eax,0x0
    24ce:	e8 9d fb ff ff       	call   2070 <__isoc99_sscanf@plt>
    24d3:	eb 7d                	jmp    2552 <main+0x189>
    24d5:	c7 45 c4 10 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x10
    24dc:	c7 45 c8 40 00 00 00 	mov    DWORD PTR [rbp-0x38],0x40
    24e3:	83 7d bc 01          	cmp    DWORD PTR [rbp-0x44],0x1
    24e7:	7e 4c                	jle    2535 <main+0x16c>
    24e9:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    24ed:	48 83 c0 08          	add    rax,0x8
    24f1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    24f4:	48 8d 55 c4          	lea    rdx,[rbp-0x3c]
    24f8:	48 8d 0d 0b 1b 00 00 	lea    rcx,[rip+0x1b0b]        # 400a <_IO_stdin_used+0xa>
    24ff:	48 89 ce             	mov    rsi,rcx
    2502:	48 89 c7             	mov    rdi,rax
    2505:	b8 00 00 00 00       	mov    eax,0x0
    250a:	e8 61 fb ff ff       	call   2070 <__isoc99_sscanf@plt>
    250f:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2513:	48 83 c0 10          	add    rax,0x10
    2517:	48 8b 00             	mov    rax,QWORD PTR [rax]
    251a:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
    251e:	48 8d 0d e5 1a 00 00 	lea    rcx,[rip+0x1ae5]        # 400a <_IO_stdin_used+0xa>
    2525:	48 89 ce             	mov    rsi,rcx
    2528:	48 89 c7             	mov    rdi,rax
    252b:	b8 00 00 00 00       	mov    eax,0x0
    2530:	e8 3b fb ff ff       	call   2070 <__isoc99_sscanf@plt>
    2535:	8b 55 c8             	mov    edx,DWORD PTR [rbp-0x38]
    2538:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    253b:	89 d6                	mov    esi,edx
    253d:	89 c7                	mov    edi,eax
    253f:	e8 de 0a 00 00       	call   3022 <generate_new_connected_graph>
    2544:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    2548:	c7 05 62 3b 00 00 00 	mov    DWORD PTR [rip+0x3b62],0x0        # 60b4 <ROOT>
    254f:	00 00 00 
    2552:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
    2559:	00 
    255a:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [rbp-0x30],0x0
    2561:	eb 56                	jmp    25b9 <main+0x1f0>
    2563:	b8 00 00 00 00       	mov    eax,0x0
    2568:	e8 90 0b 00 00       	call   30fd <begin_timer>
    256d:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x0
    2574:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
    257b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    257f:	48 89 c7             	mov    rdi,rax
    2582:	e8 d2 fc ff ff       	call   2259 <initialize_graph>
    2587:	eb 18                	jmp    25a1 <main+0x1d8>
    2589:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
    258c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2590:	89 d6                	mov    esi,edx
    2592:	48 89 c7             	mov    rdi,rax
    2595:	e8 4c fd ff ff       	call   22e6 <broadcast_start>
    259a:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
    259d:	83 45 d4 01          	add    DWORD PTR [rbp-0x2c],0x1
    25a1:	83 7d d8 00          	cmp    DWORD PTR [rbp-0x28],0x0
    25a5:	74 e2                	je     2589 <main+0x1c0>
    25a7:	b8 00 00 00 00       	mov    eax,0x0
    25ac:	e8 67 0b 00 00       	call   3118 <time_elapsed>
    25b1:	48 01 45 e8          	add    QWORD PTR [rbp-0x18],rax
    25b5:	83 45 d0 01          	add    DWORD PTR [rbp-0x30],0x1
    25b9:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
    25bc:	39 45 d0             	cmp    DWORD PTR [rbp-0x30],eax
    25bf:	7c a2                	jl     2563 <main+0x19a>
    25c1:	83 7d dc 00          	cmp    DWORD PTR [rbp-0x24],0x0
    25c5:	74 37                	je     25fe <main+0x235>
    25c7:	66 0f ef c0          	pxor   xmm0,xmm0
    25cb:	f2 48 0f 2a 45 e8    	cvtsi2sd xmm0,QWORD PTR [rbp-0x18]
    25d1:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
    25d4:	66 0f ef c9          	pxor   xmm1,xmm1
    25d8:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
    25dc:	f2 0f 5e c1          	divsd  xmm0,xmm1
    25e0:	66 48 0f 7e c0       	movq   rax,xmm0
    25e5:	66 48 0f 6e c0       	movq   xmm0,rax
    25ea:	48 8d 05 1c 1a 00 00 	lea    rax,[rip+0x1a1c]        # 400d <_IO_stdin_used+0xd>
    25f1:	48 89 c7             	mov    rdi,rax
    25f4:	b8 01 00 00 00       	mov    eax,0x1
    25f9:	e8 32 fa ff ff       	call   2030 <printf@plt>
    25fe:	b8 00 00 00 00       	mov    eax,0x0
    2603:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    2607:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    260e:	00 00 
    2610:	74 05                	je     2617 <main+0x24e>
    2612:	e8 c9 fa ff ff       	call   20e0 <__stack_chk_fail@plt>
    2617:	c9                   	leave
    2618:	c3                   	ret

0000000000002619 <initialize_graph._omp_fn.0>:
    2619:	55                   	push   rbp
    261a:	48 89 e5             	mov    rbp,rsp
    261d:	53                   	push   rbx
    261e:	48 83 ec 58          	sub    rsp,0x58
    2622:	48 89 7d a8          	mov    QWORD PTR [rbp-0x58],rdi
    2626:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    262d:	00 00 
    262f:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    2633:	31 c0                	xor    eax,eax
    2635:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
    2639:	48 8b 00             	mov    rax,QWORD PTR [rax]
    263c:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    2640:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2644:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2647:	48 98                	cdqe
    2649:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
    264d:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
    2651:	49 89 c8             	mov    r8,rcx
    2654:	48 89 d1             	mov    rcx,rdx
    2657:	ba 01 00 00 00       	mov    edx,0x1
    265c:	48 89 c6             	mov    rsi,rax
    265f:	bf 00 00 00 00       	mov    edi,0x0
    2664:	e8 67 fa ff ff       	call   20d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>
    2669:	84 c0                	test   al,al
    266b:	74 75                	je     26e2 <initialize_graph._omp_fn.0+0xc9>
    266d:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    2671:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
    2674:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2678:	89 c3                	mov    ebx,eax
    267a:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    267d:	48 63 d0             	movsxd rdx,eax
    2680:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2684:	48 89 d6             	mov    rsi,rdx
    2687:	48 89 c7             	mov    rdi,rax
    268a:	e8 40 0c 00 00       	call   32cf <elem_at>
    268f:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    2693:	bf 08 00 00 00       	mov    edi,0x8
    2698:	e8 f3 f9 ff ff       	call   2090 <malloc@plt>
    269d:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    26a1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    26a5:	c7 00 ff ff ff ff    	mov    DWORD PTR [rax],0xffffffff
    26ab:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    26af:	c7 40 04 ff ff ff ff 	mov    DWORD PTR [rax+0x4],0xffffffff
    26b6:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    26ba:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
    26be:	48 89 50 20          	mov    QWORD PTR [rax+0x20],rdx
    26c2:	83 45 bc 01          	add    DWORD PTR [rbp-0x44],0x1
    26c6:	39 5d bc             	cmp    DWORD PTR [rbp-0x44],ebx
    26c9:	7c af                	jl     267a <initialize_graph._omp_fn.0+0x61>
    26cb:	48 8d 55 c8          	lea    rdx,[rbp-0x38]
    26cf:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    26d3:	48 89 d6             	mov    rsi,rdx
    26d6:	48 89 c7             	mov    rdi,rax
    26d9:	e8 82 f9 ff ff       	call   2060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>
    26de:	84 c0                	test   al,al
    26e0:	75 8b                	jne    266d <initialize_graph._omp_fn.0+0x54>
    26e2:	e8 59 fa ff ff       	call   2140 <GOMP_loop_end_nowait@plt>
    26e7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    26eb:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    26f2:	00 00 
    26f4:	74 05                	je     26fb <initialize_graph._omp_fn.0+0xe2>
    26f6:	e8 e5 f9 ff ff       	call   20e0 <__stack_chk_fail@plt>
    26fb:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    26ff:	c9                   	leave
    2700:	c3                   	ret

0000000000002701 <broadcast_start._omp_fn.0>:
    2701:	55                   	push   rbp
    2702:	48 89 e5             	mov    rbp,rsp
    2705:	53                   	push   rbx
    2706:	48 83 ec 68          	sub    rsp,0x68
    270a:	48 89 7d 98          	mov    QWORD PTR [rbp-0x68],rdi
    270e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2715:	00 00 
    2717:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    271b:	31 c0                	xor    eax,eax
    271d:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
    2721:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
    2724:	89 45 ac             	mov    DWORD PTR [rbp-0x54],eax
    2727:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
    272b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    272e:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    2732:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    2736:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2739:	48 98                	cdqe
    273b:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
    273f:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
    2743:	49 89 c8             	mov    r8,rcx
    2746:	48 89 d1             	mov    rcx,rdx
    2749:	ba 01 00 00 00       	mov    edx,0x1
    274e:	48 89 c6             	mov    rsi,rax
    2751:	bf 00 00 00 00       	mov    edi,0x0
    2756:	e8 75 f9 ff ff       	call   20d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>
    275b:	84 c0                	test   al,al
    275d:	0f 84 d4 00 00 00    	je     2837 <broadcast_start._omp_fn.0+0x136>
    2763:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
    2767:	89 45 a4             	mov    DWORD PTR [rbp-0x5c],eax
    276a:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    276e:	89 c3                	mov    ebx,eax
    2770:	8b 45 a4             	mov    eax,DWORD PTR [rbp-0x5c]
    2773:	48 63 d0             	movsxd rdx,eax
    2776:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    277a:	48 89 d6             	mov    rsi,rdx
    277d:	48 89 c7             	mov    rdi,rax
    2780:	e8 4a 0b 00 00       	call   32cf <elem_at>
    2785:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    2789:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    278d:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2791:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    2795:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2799:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    279c:	3b 45 ac             	cmp    eax,DWORD PTR [rbp-0x54]
    279f:	74 22                	je     27c3 <broadcast_start._omp_fn.0+0xc2>
    27a1:	83 45 a4 01          	add    DWORD PTR [rbp-0x5c],0x1
    27a5:	39 5d a4             	cmp    DWORD PTR [rbp-0x5c],ebx
    27a8:	7c c6                	jl     2770 <broadcast_start._omp_fn.0+0x6f>
    27aa:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
    27ae:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    27b2:	48 89 d6             	mov    rsi,rdx
    27b5:	48 89 c7             	mov    rdi,rax
    27b8:	e8 a3 f8 ff ff       	call   2060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>
    27bd:	84 c0                	test   al,al
    27bf:	75 a2                	jne    2763 <broadcast_start._omp_fn.0+0x62>
    27c1:	eb 74                	jmp    2837 <broadcast_start._omp_fn.0+0x136>
    27c3:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [rbp-0x58],0x0
    27ca:	90                   	nop
    27cb:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    27cf:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    27d2:	3b 45 a8             	cmp    eax,DWORD PTR [rbp-0x58]
    27d5:	7e ca                	jle    27a1 <broadcast_start._omp_fn.0+0xa0>
    27d7:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
    27da:	48 63 d0             	movsxd rdx,eax
    27dd:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    27e1:	48 89 d6             	mov    rsi,rdx
    27e4:	48 89 c7             	mov    rdi,rax
    27e7:	e8 e3 0a 00 00       	call   32cf <elem_at>
    27ec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27ef:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    27f3:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    27f7:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    27fb:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    27ff:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2803:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    2806:	85 c0                	test   eax,eax
    2808:	78 06                	js     2810 <broadcast_start._omp_fn.0+0x10f>
    280a:	83 45 a8 01          	add    DWORD PTR [rbp-0x58],0x1
    280e:	eb bb                	jmp    27cb <broadcast_start._omp_fn.0+0xca>
    2810:	8b 45 ac             	mov    eax,DWORD PTR [rbp-0x54]
    2813:	8d 50 01             	lea    edx,[rax+0x1]
    2816:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    281a:	89 50 04             	mov    DWORD PTR [rax+0x4],edx
    281d:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    2821:	8b 50 28             	mov    edx,DWORD PTR [rax+0x28]
    2824:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2828:	89 10                	mov    DWORD PTR [rax],edx
    282a:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
    282e:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [rax+0xc],0x0
    2835:	eb d3                	jmp    280a <broadcast_start._omp_fn.0+0x109>
    2837:	e8 04 f9 ff ff       	call   2140 <GOMP_loop_end_nowait@plt>
    283c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2840:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2847:	00 00 
    2849:	74 05                	je     2850 <broadcast_start._omp_fn.0+0x14f>
    284b:	e8 90 f8 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2850:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    2854:	c9                   	leave
    2855:	c3                   	ret

0000000000002856 <new_graph>:
    2856:	55                   	push   rbp
    2857:	48 89 e5             	mov    rbp,rsp
    285a:	48 83 ec 60          	sub    rsp,0x60
    285e:	89 7d ac             	mov    DWORD PTR [rbp-0x54],edi
    2861:	89 75 a8             	mov    DWORD PTR [rbp-0x58],esi
    2864:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    286b:	00 00 
    286d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2871:	31 c0                	xor    eax,eax
    2873:	bf 30 00 00 00       	mov    edi,0x30
    2878:	e8 13 f8 ff ff       	call   2090 <malloc@plt>
    287d:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    2881:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2885:	8b 55 ac             	mov    edx,DWORD PTR [rbp-0x54]
    2888:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
    288b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    288f:	8b 55 a8             	mov    edx,DWORD PTR [rbp-0x58]
    2892:	89 50 1c             	mov    DWORD PTR [rax+0x1c],edx
    2895:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2899:	be 30 00 00 00       	mov    esi,0x30
    289e:	48 89 c7             	mov    rdi,rax
    28a1:	e8 e6 08 00 00       	call   318c <initialize_vector>
    28a6:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [rbp-0x4c],0x0
    28ad:	eb 44                	jmp    28f3 <new_graph+0x9d>
    28af:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    28b3:	be 08 00 00 00       	mov    esi,0x8
    28b8:	48 89 c7             	mov    rdi,rax
    28bb:	e8 cc 08 00 00       	call   318c <initialize_vector>
    28c0:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
    28c7:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
    28ce:	00 
    28cf:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
    28d2:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    28d5:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    28dc:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    28e0:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
    28e4:	48 89 d6             	mov    rsi,rdx
    28e7:	48 89 c7             	mov    rdi,rax
    28ea:	e8 2d 09 00 00       	call   321c <append_to_vector>
    28ef:	83 45 b4 01          	add    DWORD PTR [rbp-0x4c],0x1
    28f3:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    28f7:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    28fa:	39 45 b4             	cmp    DWORD PTR [rbp-0x4c],eax
    28fd:	7c b0                	jl     28af <new_graph+0x59>
    28ff:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2903:	48 c7 40 28 00 00 00 	mov    QWORD PTR [rax+0x28],0x0
    290a:	00 
    290b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    290f:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    2913:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    291a:	00 00 
    291c:	74 05                	je     2923 <new_graph+0xcd>
    291e:	e8 bd f7 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2923:	c9                   	leave
    2924:	c3                   	ret

0000000000002925 <read_graph>:
    2925:	55                   	push   rbp
    2926:	48 89 e5             	mov    rbp,rsp
    2929:	48 83 ec 30          	sub    rsp,0x30
    292d:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2931:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    2935:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    293c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2940:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2943:	83 c0 02             	add    eax,0x2
    2946:	48 98                	cdqe
    2948:	48 89 c7             	mov    rdi,rax
    294b:	e8 40 f7 ff ff       	call   2090 <malloc@plt>
    2950:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2954:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    295b:	eb 74                	jmp    29d1 <read_graph+0xac>
    295d:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    2961:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2965:	48 8d 0d a8 16 00 00 	lea    rcx,[rip+0x16a8]        # 4014 <_IO_stdin_used+0x14>
    296c:	48 89 ce             	mov    rsi,rcx
    296f:	48 89 c7             	mov    rdi,rax
    2972:	b8 00 00 00 00       	mov    eax,0x0
    2977:	e8 c4 f6 ff ff       	call   2040 <__isoc99_fscanf@plt>
    297c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2983:	eb 3c                	jmp    29c1 <read_graph+0x9c>
    2985:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    2988:	48 63 d0             	movsxd rdx,eax
    298b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    298f:	48 01 d0             	add    rax,rdx
    2992:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    2995:	0f be c0             	movsx  eax,al
    2998:	83 f8 30             	cmp    eax,0x30
    299b:	74 1f                	je     29bc <read_graph+0x97>
    299d:	83 f8 31             	cmp    eax,0x31
    29a0:	75 1b                	jne    29bd <read_graph+0x98>
    29a2:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
    29a6:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    29a9:	8b 4d f0             	mov    ecx,DWORD PTR [rbp-0x10]
    29ac:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    29b0:	89 ce                	mov    esi,ecx
    29b2:	48 89 c7             	mov    rdi,rax
    29b5:	e8 28 02 00 00       	call   2be2 <add_edge>
    29ba:	eb 01                	jmp    29bd <read_graph+0x98>
    29bc:	90                   	nop
    29bd:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    29c1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    29c5:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    29c8:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    29cb:	7c b8                	jl     2985 <read_graph+0x60>
    29cd:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
    29d1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    29d5:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    29d8:	39 45 f0             	cmp    DWORD PTR [rbp-0x10],eax
    29db:	7c 80                	jl     295d <read_graph+0x38>
    29dd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    29e1:	48 89 c7             	mov    rdi,rax
    29e4:	e8 c7 f6 ff ff       	call   20b0 <free@plt>
    29e9:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    29ec:	89 c2                	mov    edx,eax
    29ee:	c1 ea 1f             	shr    edx,0x1f
    29f1:	01 d0                	add    eax,edx
    29f3:	d1 f8                	sar    eax,1
    29f5:	c9                   	leave
    29f6:	c3                   	ret

00000000000029f7 <read_weights>:
    29f7:	55                   	push   rbp
    29f8:	48 89 e5             	mov    rbp,rsp
    29fb:	48 83 ec 30          	sub    rsp,0x30
    29ff:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2a03:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    2a07:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2a0e:	00 00 
    2a10:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2a14:	31 c0                	xor    eax,eax
    2a16:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    2a1d:	e9 a3 00 00 00       	jmp    2ac5 <read_weights+0xce>
    2a22:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2a29:	e9 83 00 00 00       	jmp    2ab1 <read_weights+0xba>
    2a2e:	48 8d 55 ec          	lea    rdx,[rbp-0x14]
    2a32:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2a36:	48 8d 0d da 15 00 00 	lea    rcx,[rip+0x15da]        # 4017 <_IO_stdin_used+0x17>
    2a3d:	48 89 ce             	mov    rsi,rcx
    2a40:	48 89 c7             	mov    rdi,rax
    2a43:	b8 00 00 00 00       	mov    eax,0x0
    2a48:	e8 f3 f5 ff ff       	call   2040 <__isoc99_fscanf@plt>
    2a4d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    2a50:	3b 45 f4             	cmp    eax,DWORD PTR [rbp-0xc]
    2a53:	74 57                	je     2aac <read_weights+0xb5>
    2a55:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2a59:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2a5d:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    2a60:	48 63 d2             	movsxd rdx,edx
    2a63:	48 c1 e2 03          	shl    rdx,0x3
    2a67:	48 01 d0             	add    rax,rdx
    2a6a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a6d:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
    2a70:	48 63 d2             	movsxd rdx,edx
    2a73:	48 c1 e2 02          	shl    rdx,0x2
    2a77:	48 01 d0             	add    rax,rdx
    2a7a:	8b 00                	mov    eax,DWORD PTR [rax]
    2a7c:	85 c0                	test   eax,eax
    2a7e:	74 2d                	je     2aad <read_weights+0xb6>
    2a80:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2a84:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2a88:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
    2a8b:	48 63 d2             	movsxd rdx,edx
    2a8e:	48 c1 e2 03          	shl    rdx,0x3
    2a92:	48 01 d0             	add    rax,rdx
    2a95:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a98:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    2a9b:	48 63 d2             	movsxd rdx,edx
    2a9e:	48 c1 e2 02          	shl    rdx,0x2
    2aa2:	48 01 c2             	add    rdx,rax
    2aa5:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    2aa8:	89 02                	mov    DWORD PTR [rdx],eax
    2aaa:	eb 01                	jmp    2aad <read_weights+0xb6>
    2aac:	90                   	nop
    2aad:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    2ab1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2ab5:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2ab8:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    2abb:	0f 8c 6d ff ff ff    	jl     2a2e <read_weights+0x37>
    2ac1:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
    2ac5:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2ac9:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2acc:	39 45 f0             	cmp    DWORD PTR [rbp-0x10],eax
    2acf:	0f 8c 4d ff ff ff    	jl     2a22 <read_weights+0x2b>
    2ad5:	90                   	nop
    2ad6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2ada:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2ae1:	00 00 
    2ae3:	74 05                	je     2aea <read_weights+0xf3>
    2ae5:	e8 f6 f5 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2aea:	c9                   	leave
    2aeb:	c3                   	ret

0000000000002aec <print_graph>:
    2aec:	55                   	push   rbp
    2aed:	48 89 e5             	mov    rbp,rsp
    2af0:	48 83 ec 20          	sub    rsp,0x20
    2af4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    2af8:	48 8d 05 1b 15 00 00 	lea    rax,[rip+0x151b]        # 401a <_IO_stdin_used+0x1a>
    2aff:	48 89 c7             	mov    rdi,rax
    2b02:	b8 00 00 00 00       	mov    eax,0x0
    2b07:	e8 24 f5 ff ff       	call   2030 <printf@plt>
    2b0c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    2b13:	eb 1d                	jmp    2b32 <print_graph+0x46>
    2b15:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    2b18:	89 c6                	mov    esi,eax
    2b1a:	48 8d 05 fe 14 00 00 	lea    rax,[rip+0x14fe]        # 401f <_IO_stdin_used+0x1f>
    2b21:	48 89 c7             	mov    rdi,rax
    2b24:	b8 00 00 00 00       	mov    eax,0x0
    2b29:	e8 02 f5 ff ff       	call   2030 <printf@plt>
    2b2e:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    2b32:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2b36:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2b39:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    2b3c:	7c d7                	jl     2b15 <print_graph+0x29>
    2b3e:	bf 0a 00 00 00       	mov    edi,0xa
    2b43:	e8 38 f5 ff ff       	call   2080 <putchar@plt>
    2b48:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    2b4f:	eb 7d                	jmp    2bce <print_graph+0xe2>
    2b51:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    2b54:	89 c6                	mov    esi,eax
    2b56:	48 8d 05 c2 14 00 00 	lea    rax,[rip+0x14c2]        # 401f <_IO_stdin_used+0x1f>
    2b5d:	48 89 c7             	mov    rdi,rax
    2b60:	b8 00 00 00 00       	mov    eax,0x0
    2b65:	e8 c6 f4 ff ff       	call   2030 <printf@plt>
    2b6a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    2b71:	eb 41                	jmp    2bb4 <print_graph+0xc8>
    2b73:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2b77:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2b7b:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
    2b7e:	48 63 d2             	movsxd rdx,edx
    2b81:	48 c1 e2 03          	shl    rdx,0x3
    2b85:	48 01 d0             	add    rax,rdx
    2b88:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b8b:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    2b8e:	48 63 d2             	movsxd rdx,edx
    2b91:	48 c1 e2 02          	shl    rdx,0x2
    2b95:	48 01 d0             	add    rax,rdx
    2b98:	8b 00                	mov    eax,DWORD PTR [rax]
    2b9a:	89 c6                	mov    esi,eax
    2b9c:	48 8d 05 7c 14 00 00 	lea    rax,[rip+0x147c]        # 401f <_IO_stdin_used+0x1f>
    2ba3:	48 89 c7             	mov    rdi,rax
    2ba6:	b8 00 00 00 00       	mov    eax,0x0
    2bab:	e8 80 f4 ff ff       	call   2030 <printf@plt>
    2bb0:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    2bb4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2bb8:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2bbb:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
    2bbe:	7c b3                	jl     2b73 <print_graph+0x87>
    2bc0:	bf 0a 00 00 00       	mov    edi,0xa
    2bc5:	e8 b6 f4 ff ff       	call   2080 <putchar@plt>
    2bca:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    2bce:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2bd2:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2bd5:	39 45 f8             	cmp    DWORD PTR [rbp-0x8],eax
    2bd8:	0f 8c 73 ff ff ff    	jl     2b51 <print_graph+0x65>
    2bde:	90                   	nop
    2bdf:	90                   	nop
    2be0:	c9                   	leave
    2be1:	c3                   	ret

0000000000002be2 <add_edge>:
    2be2:	55                   	push   rbp
    2be3:	48 89 e5             	mov    rbp,rsp
    2be6:	48 83 ec 30          	sub    rsp,0x30
    2bea:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    2bee:	89 75 d4             	mov    DWORD PTR [rbp-0x2c],esi
    2bf1:	89 55 d0             	mov    DWORD PTR [rbp-0x30],edx
    2bf4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2bfb:	00 00 
    2bfd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2c01:	31 c0                	xor    eax,eax
    2c03:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
    2c06:	48 63 d0             	movsxd rdx,eax
    2c09:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2c0d:	48 89 d6             	mov    rsi,rdx
    2c10:	48 89 c7             	mov    rdi,rax
    2c13:	e8 b7 06 00 00       	call   32cf <elem_at>
    2c18:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    2c1c:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
    2c1f:	48 63 d0             	movsxd rdx,eax
    2c22:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2c26:	48 89 d6             	mov    rsi,rdx
    2c29:	48 89 c7             	mov    rdi,rax
    2c2c:	e8 9e 06 00 00       	call   32cf <elem_at>
    2c31:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    2c35:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2c39:	48 89 c2             	mov    rdx,rax
    2c3c:	48 8d 45 f0          	lea    rax,[rbp-0x10]
    2c40:	48 89 c6             	mov    rsi,rax
    2c43:	48 89 d7             	mov    rdi,rdx
    2c46:	e8 d1 05 00 00       	call   321c <append_to_vector>
    2c4b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2c4f:	48 89 c2             	mov    rdx,rax
    2c52:	48 8d 45 e8          	lea    rax,[rbp-0x18]
    2c56:	48 89 c6             	mov    rsi,rax
    2c59:	48 89 d7             	mov    rdi,rdx
    2c5c:	e8 bb 05 00 00       	call   321c <append_to_vector>
    2c61:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2c65:	8b 50 18             	mov    edx,DWORD PTR [rax+0x18]
    2c68:	83 c2 01             	add    edx,0x1
    2c6b:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
    2c6e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2c72:	8b 50 18             	mov    edx,DWORD PTR [rax+0x18]
    2c75:	83 c2 01             	add    edx,0x1
    2c78:	89 50 18             	mov    DWORD PTR [rax+0x18],edx
    2c7b:	90                   	nop
    2c7c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2c80:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2c87:	00 00 
    2c89:	74 05                	je     2c90 <add_edge+0xae>
    2c8b:	e8 50 f4 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2c90:	c9                   	leave
    2c91:	c3                   	ret

0000000000002c92 <free_graph>:
    2c92:	55                   	push   rbp
    2c93:	48 89 e5             	mov    rbp,rsp
    2c96:	48 83 ec 20          	sub    rsp,0x20
    2c9a:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    2c9e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2ca2:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2ca6:	48 85 c0             	test   rax,rax
    2ca9:	74 49                	je     2cf4 <free_graph+0x62>
    2cab:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    2cb2:	eb 24                	jmp    2cd8 <free_graph+0x46>
    2cb4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2cb8:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2cbc:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    2cbf:	48 63 d2             	movsxd rdx,edx
    2cc2:	48 c1 e2 03          	shl    rdx,0x3
    2cc6:	48 01 d0             	add    rax,rdx
    2cc9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ccc:	48 89 c7             	mov    rdi,rax
    2ccf:	e8 dc f3 ff ff       	call   20b0 <free@plt>
    2cd4:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    2cd8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2cdc:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2cdf:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
    2ce2:	7c d0                	jl     2cb4 <free_graph+0x22>
    2ce4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2ce8:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2cec:	48 89 c7             	mov    rdi,rax
    2cef:	e8 bc f3 ff ff       	call   20b0 <free@plt>
    2cf4:	90                   	nop
    2cf5:	c9                   	leave
    2cf6:	c3                   	ret

0000000000002cf7 <is_connected>:
    2cf7:	55                   	push   rbp
    2cf8:	48 89 e5             	mov    rbp,rsp
    2cfb:	48 83 ec 50          	sub    rsp,0x50
    2cff:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
    2d03:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2d0a:	00 00 
    2d0c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2d10:	31 c0                	xor    eax,eax
    2d12:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2d16:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2d19:	48 98                	cdqe
    2d1b:	be 04 00 00 00       	mov    esi,0x4
    2d20:	48 89 c7             	mov    rdi,rax
    2d23:	e8 d8 f3 ff ff       	call   2100 <calloc@plt>
    2d28:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    2d2c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2d30:	be 00 00 00 00       	mov    esi,0x0
    2d35:	48 89 c7             	mov    rdi,rax
    2d38:	e8 92 05 00 00       	call   32cf <elem_at>
    2d3d:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    2d41:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    2d45:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    2d48:	48 98                	cdqe
    2d4a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2d51:	00 
    2d52:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2d56:	48 01 d0             	add    rax,rdx
    2d59:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    2d5f:	bf 08 00 00 00       	mov    edi,0x8
    2d64:	e8 80 04 00 00       	call   31e9 <new_vector>
    2d69:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    2d6d:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
    2d71:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2d75:	48 89 d6             	mov    rsi,rdx
    2d78:	48 89 c7             	mov    rdi,rax
    2d7b:	e8 9c 04 00 00       	call   321c <append_to_vector>
    2d80:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [rbp-0x40],0x0
    2d87:	e9 a7 00 00 00       	jmp    2e33 <is_connected+0x13c>
    2d8c:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
    2d8f:	48 63 d0             	movsxd rdx,eax
    2d92:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2d96:	48 89 d6             	mov    rsi,rdx
    2d99:	48 89 c7             	mov    rdi,rax
    2d9c:	e8 2e 05 00 00       	call   32cf <elem_at>
    2da1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2da4:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    2da8:	83 45 c0 01          	add    DWORD PTR [rbp-0x40],0x1
    2dac:	c7 45 c4 00 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x0
    2db3:	eb 72                	jmp    2e27 <is_connected+0x130>
    2db5:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    2db8:	48 63 d0             	movsxd rdx,eax
    2dbb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2dbf:	48 89 d6             	mov    rsi,rdx
    2dc2:	48 89 c7             	mov    rdi,rax
    2dc5:	e8 05 05 00 00       	call   32cf <elem_at>
    2dca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2dcd:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    2dd1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2dd5:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    2dd8:	48 98                	cdqe
    2dda:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2de1:	00 
    2de2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2de6:	48 01 d0             	add    rax,rdx
    2de9:	8b 00                	mov    eax,DWORD PTR [rax]
    2deb:	85 c0                	test   eax,eax
    2ded:	7f 33                	jg     2e22 <is_connected+0x12b>
    2def:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    2df3:	8b 40 28             	mov    eax,DWORD PTR [rax+0x28]
    2df6:	48 98                	cdqe
    2df8:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2dff:	00 
    2e00:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2e04:	48 01 d0             	add    rax,rdx
    2e07:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    2e0d:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
    2e11:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e15:	48 89 d6             	mov    rsi,rdx
    2e18:	48 89 c7             	mov    rdi,rax
    2e1b:	e8 fc 03 00 00       	call   321c <append_to_vector>
    2e20:	eb 01                	jmp    2e23 <is_connected+0x12c>
    2e22:	90                   	nop
    2e23:	83 45 c4 01          	add    DWORD PTR [rbp-0x3c],0x1
    2e27:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2e2b:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2e2e:	39 45 c4             	cmp    DWORD PTR [rbp-0x3c],eax
    2e31:	7c 82                	jl     2db5 <is_connected+0xbe>
    2e33:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e37:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    2e3a:	39 45 c0             	cmp    DWORD PTR [rbp-0x40],eax
    2e3d:	0f 8c 49 ff ff ff    	jl     2d8c <is_connected+0x95>
    2e43:	c7 45 c8 01 00 00 00 	mov    DWORD PTR [rbp-0x38],0x1
    2e4a:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
    2e51:	eb 25                	jmp    2e78 <is_connected+0x181>
    2e53:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
    2e56:	48 98                	cdqe
    2e58:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2e5f:	00 
    2e60:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2e64:	48 01 d0             	add    rax,rdx
    2e67:	8b 00                	mov    eax,DWORD PTR [rax]
    2e69:	85 c0                	test   eax,eax
    2e6b:	75 07                	jne    2e74 <is_connected+0x17d>
    2e6d:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
    2e74:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
    2e78:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    2e7c:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    2e7f:	39 45 cc             	cmp    DWORD PTR [rbp-0x34],eax
    2e82:	7c cf                	jl     2e53 <is_connected+0x15c>
    2e84:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    2e88:	48 89 c7             	mov    rdi,rax
    2e8b:	e8 64 04 00 00       	call   32f4 <free_vector>
    2e90:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    2e94:	48 89 c7             	mov    rdi,rax
    2e97:	e8 14 f2 ff ff       	call   20b0 <free@plt>
    2e9c:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
    2e9f:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    2ea3:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    2eaa:	00 00 
    2eac:	74 05                	je     2eb3 <is_connected+0x1bc>
    2eae:	e8 2d f2 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2eb3:	c9                   	leave
    2eb4:	c3                   	ret

0000000000002eb5 <generate_new_graph>:
    2eb5:	55                   	push   rbp
    2eb6:	48 89 e5             	mov    rbp,rsp
    2eb9:	48 83 ec 30          	sub    rsp,0x30
    2ebd:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
    2ec0:	89 75 d8             	mov    DWORD PTR [rbp-0x28],esi
    2ec3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2eca:	00 00 
    2ecc:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2ed0:	31 c0                	xor    eax,eax
    2ed2:	8b 55 d8             	mov    edx,DWORD PTR [rbp-0x28]
    2ed5:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    2ed8:	89 d6                	mov    esi,edx
    2eda:	89 c7                	mov    edi,eax
    2edc:	e8 75 f9 ff ff       	call   2856 <new_graph>
    2ee1:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    2ee5:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    2eec:	e9 0b 01 00 00       	jmp    2ffc <generate_new_graph+0x147>
    2ef1:	e8 3a f2 ff ff       	call   2130 <rand@plt>
    2ef6:	99                   	cdq
    2ef7:	f7 7d dc             	idiv   DWORD PTR [rbp-0x24]
    2efa:	89 d0                	mov    eax,edx
    2efc:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    2eff:	e8 2c f2 ff ff       	call   2130 <rand@plt>
    2f04:	99                   	cdq
    2f05:	f7 7d dc             	idiv   DWORD PTR [rbp-0x24]
    2f08:	89 d0                	mov    eax,edx
    2f0a:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
    2f0d:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    2f10:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    2f13:	39 c2                	cmp    edx,eax
    2f15:	0f 84 dd 00 00 00    	je     2ff8 <generate_new_graph+0x143>
    2f1b:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    2f1e:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    2f21:	39 c2                	cmp    edx,eax
    2f23:	7e 13                	jle    2f38 <generate_new_graph+0x83>
    2f25:	48 8d 55 e8          	lea    rdx,[rbp-0x18]
    2f29:	48 8d 45 e4          	lea    rax,[rbp-0x1c]
    2f2d:	48 89 d6             	mov    rsi,rdx
    2f30:	48 89 c7             	mov    rdi,rax
    2f33:	e8 47 01 00 00       	call   307f <swap>
    2f38:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2f3c:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2f40:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    2f43:	48 63 d2             	movsxd rdx,edx
    2f46:	48 c1 e2 03          	shl    rdx,0x3
    2f4a:	48 01 d0             	add    rax,rdx
    2f4d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f50:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
    2f53:	48 63 d2             	movsxd rdx,edx
    2f56:	48 c1 e2 02          	shl    rdx,0x2
    2f5a:	48 01 d0             	add    rax,rdx
    2f5d:	8b 00                	mov    eax,DWORD PTR [rax]
    2f5f:	85 c0                	test   eax,eax
    2f61:	0f 85 94 00 00 00    	jne    2ffb <generate_new_graph+0x146>
    2f67:	e8 c4 f1 ff ff       	call   2130 <rand@plt>
    2f6c:	48 63 d0             	movsxd rdx,eax
    2f6f:	48 69 d2 1f 85 eb 51 	imul   rdx,rdx,0x51eb851f
    2f76:	48 c1 ea 20          	shr    rdx,0x20
    2f7a:	c1 fa 05             	sar    edx,0x5
    2f7d:	89 c1                	mov    ecx,eax
    2f7f:	c1 f9 1f             	sar    ecx,0x1f
    2f82:	29 ca                	sub    edx,ecx
    2f84:	6b ca 64             	imul   ecx,edx,0x64
    2f87:	29 c8                	sub    eax,ecx
    2f89:	89 c2                	mov    edx,eax
    2f8b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2f8f:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
    2f93:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
    2f96:	48 63 c9             	movsxd rcx,ecx
    2f99:	48 c1 e1 03          	shl    rcx,0x3
    2f9d:	48 01 c8             	add    rax,rcx
    2fa0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2fa3:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    2fa6:	48 63 c9             	movsxd rcx,ecx
    2fa9:	48 c1 e1 02          	shl    rcx,0x2
    2fad:	48 01 c8             	add    rax,rcx
    2fb0:	83 c2 01             	add    edx,0x1
    2fb3:	89 10                	mov    DWORD PTR [rax],edx
    2fb5:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    2fb9:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2fbd:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    2fc0:	48 63 c9             	movsxd rcx,ecx
    2fc3:	48 c1 e1 03          	shl    rcx,0x3
    2fc7:	48 01 ca             	add    rdx,rcx
    2fca:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2fcd:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
    2fd0:	48 63 c9             	movsxd rcx,ecx
    2fd3:	48 c1 e1 02          	shl    rcx,0x2
    2fd7:	48 01 ca             	add    rdx,rcx
    2fda:	8b 00                	mov    eax,DWORD PTR [rax]
    2fdc:	89 02                	mov    DWORD PTR [rdx],eax
    2fde:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
    2fe1:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    2fe4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    2fe8:	89 ce                	mov    esi,ecx
    2fea:	48 89 c7             	mov    rdi,rax
    2fed:	e8 f0 fb ff ff       	call   2be2 <add_edge>
    2ff2:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
    2ff6:	eb 04                	jmp    2ffc <generate_new_graph+0x147>
    2ff8:	90                   	nop
    2ff9:	eb 01                	jmp    2ffc <generate_new_graph+0x147>
    2ffb:	90                   	nop
    2ffc:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    2fff:	3b 45 d8             	cmp    eax,DWORD PTR [rbp-0x28]
    3002:	0f 8c e9 fe ff ff    	jl     2ef1 <generate_new_graph+0x3c>
    3008:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    300c:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    3010:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    3017:	00 00 
    3019:	74 05                	je     3020 <generate_new_graph+0x16b>
    301b:	e8 c0 f0 ff ff       	call   20e0 <__stack_chk_fail@plt>
    3020:	c9                   	leave
    3021:	c3                   	ret

0000000000003022 <generate_new_connected_graph>:
    3022:	55                   	push   rbp
    3023:	48 89 e5             	mov    rbp,rsp
    3026:	48 83 ec 20          	sub    rsp,0x20
    302a:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    302d:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
    3030:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
    3037:	00 
    3038:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    303f:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    3043:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
    3048:	74 0c                	je     3056 <generate_new_connected_graph+0x34>
    304a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    304e:	48 89 c7             	mov    rdi,rax
    3051:	e8 3c fc ff ff       	call   2c92 <free_graph>
    3056:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
    3059:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    305c:	89 d6                	mov    esi,edx
    305e:	89 c7                	mov    edi,eax
    3060:	e8 50 fe ff ff       	call   2eb5 <generate_new_graph>
    3065:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    3069:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    306d:	48 89 c7             	mov    rdi,rax
    3070:	e8 82 fc ff ff       	call   2cf7 <is_connected>
    3075:	85 c0                	test   eax,eax
    3077:	74 c6                	je     303f <generate_new_connected_graph+0x1d>
    3079:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    307d:	c9                   	leave
    307e:	c3                   	ret

000000000000307f <swap>:
    307f:	55                   	push   rbp
    3080:	48 89 e5             	mov    rbp,rsp
    3083:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    3087:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    308b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    308f:	8b 00                	mov    eax,DWORD PTR [rax]
    3091:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    3094:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    3098:	8b 10                	mov    edx,DWORD PTR [rax]
    309a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    309e:	89 10                	mov    DWORD PTR [rax],edx
    30a0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    30a4:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    30a7:	89 10                	mov    DWORD PTR [rax],edx
    30a9:	90                   	nop
    30aa:	5d                   	pop    rbp
    30ab:	c3                   	ret

00000000000030ac <input_through_argv>:
    30ac:	55                   	push   rbp
    30ad:	48 89 e5             	mov    rbp,rsp
    30b0:	48 83 ec 10          	sub    rsp,0x10
    30b4:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    30b7:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    30bb:	83 7d fc 02          	cmp    DWORD PTR [rbp-0x4],0x2
    30bf:	7f 07                	jg     30c8 <input_through_argv+0x1c>
    30c1:	b8 00 00 00 00       	mov    eax,0x0
    30c6:	eb 33                	jmp    30fb <input_through_argv+0x4f>
    30c8:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
    30cc:	75 28                	jne    30f6 <input_through_argv+0x4a>
    30ce:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    30d2:	48 83 c0 08          	add    rax,0x8
    30d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    30d9:	48 8d 15 44 0f 00 00 	lea    rdx,[rip+0xf44]        # 4024 <_IO_stdin_used+0x24>
    30e0:	48 89 d6             	mov    rsi,rdx
    30e3:	48 89 c7             	mov    rdi,rax
    30e6:	e8 05 f0 ff ff       	call   20f0 <strcmp@plt>
    30eb:	85 c0                	test   eax,eax
    30ed:	75 07                	jne    30f6 <input_through_argv+0x4a>
    30ef:	b8 02 00 00 00       	mov    eax,0x2
    30f4:	eb 05                	jmp    30fb <input_through_argv+0x4f>
    30f6:	b8 00 00 00 00       	mov    eax,0x0
    30fb:	c9                   	leave
    30fc:	c3                   	ret

00000000000030fd <begin_timer>:
    30fd:	55                   	push   rbp
    30fe:	48 89 e5             	mov    rbp,rsp
    3101:	48 8d 05 b8 2f 00 00 	lea    rax,[rip+0x2fb8]        # 60c0 <start_time>
    3108:	48 89 c6             	mov    rsi,rax
    310b:	bf 01 00 00 00       	mov    edi,0x1
    3110:	e8 3b ef ff ff       	call   2050 <clock_gettime@plt>
    3115:	90                   	nop
    3116:	5d                   	pop    rbp
    3117:	c3                   	ret

0000000000003118 <time_elapsed>:
    3118:	55                   	push   rbp
    3119:	48 89 e5             	mov    rbp,rsp
    311c:	48 83 ec 30          	sub    rsp,0x30
    3120:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    3127:	00 00 
    3129:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    312d:	31 c0                	xor    eax,eax
    312f:	48 8d 45 e0          	lea    rax,[rbp-0x20]
    3133:	48 89 c6             	mov    rsi,rax
    3136:	bf 01 00 00 00       	mov    edi,0x1
    313b:	e8 10 ef ff ff       	call   2050 <clock_gettime@plt>
    3140:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
    3144:	48 8b 05 75 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f75]        # 60c0 <start_time>
    314b:	48 29 c2             	sub    rdx,rax
    314e:	48 89 55 d0          	mov    QWORD PTR [rbp-0x30],rdx
    3152:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    3156:	48 8b 05 6b 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f6b]        # 60c8 <start_time+0x8>
    315d:	48 29 c2             	sub    rdx,rax
    3160:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    3164:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    3168:	48 69 d0 00 ca 9a 3b 	imul   rdx,rax,0x3b9aca00
    316f:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    3173:	48 01 d0             	add    rax,rdx
    3176:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    317a:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    3181:	00 00 
    3183:	74 05                	je     318a <time_elapsed+0x72>
    3185:	e8 56 ef ff ff       	call   20e0 <__stack_chk_fail@plt>
    318a:	c9                   	leave
    318b:	c3                   	ret

000000000000318c <initialize_vector>:
    318c:	55                   	push   rbp
    318d:	48 89 e5             	mov    rbp,rsp
    3190:	48 83 ec 10          	sub    rsp,0x10
    3194:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    3198:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    319c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31a0:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    31a4:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    31a8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31ac:	c7 40 10 10 00 00 00 	mov    DWORD PTR [rax+0x10],0x10
    31b3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31b7:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
    31ba:	48 63 d0             	movsxd rdx,eax
    31bd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31c1:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    31c5:	48 0f af c2          	imul   rax,rdx
    31c9:	48 89 c7             	mov    rdi,rax
    31cc:	e8 bf ee ff ff       	call   2090 <malloc@plt>
    31d1:	48 89 c2             	mov    rdx,rax
    31d4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    31db:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    31df:	c7 40 14 00 00 00 00 	mov    DWORD PTR [rax+0x14],0x0
    31e6:	90                   	nop
    31e7:	c9                   	leave
    31e8:	c3                   	ret

00000000000031e9 <new_vector>:
    31e9:	55                   	push   rbp
    31ea:	48 89 e5             	mov    rbp,rsp
    31ed:	48 83 ec 20          	sub    rsp,0x20
    31f1:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    31f5:	bf 18 00 00 00       	mov    edi,0x18
    31fa:	e8 91 ee ff ff       	call   2090 <malloc@plt>
    31ff:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    3203:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    3207:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    320b:	48 89 d6             	mov    rsi,rdx
    320e:	48 89 c7             	mov    rdi,rax
    3211:	e8 76 ff ff ff       	call   318c <initialize_vector>
    3216:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    321a:	c9                   	leave
    321b:	c3                   	ret

000000000000321c <append_to_vector>:
    321c:	55                   	push   rbp
    321d:	48 89 e5             	mov    rbp,rsp
    3220:	48 83 ec 10          	sub    rsp,0x10
    3224:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    3228:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    322c:	eb 40                	jmp    326e <append_to_vector+0x52>
    322e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3232:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
    3235:	8d 14 00             	lea    edx,[rax+rax*1]
    3238:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    323c:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
    323f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3243:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
    3246:	48 63 d0             	movsxd rdx,eax
    3249:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    324d:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    3251:	48 0f af d0          	imul   rdx,rax
    3255:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3259:	48 8b 00             	mov    rax,QWORD PTR [rax]
    325c:	48 89 d6             	mov    rsi,rdx
    325f:	48 89 c7             	mov    rdi,rax
    3262:	e8 b9 ee ff ff       	call   2120 <realloc@plt>
    3267:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    326b:	48 89 02             	mov    QWORD PTR [rdx],rax
    326e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3272:	8b 50 10             	mov    edx,DWORD PTR [rax+0x10]
    3275:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3279:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    327c:	83 c0 01             	add    eax,0x1
    327f:	39 c2                	cmp    edx,eax
    3281:	7e ab                	jle    322e <append_to_vector+0x12>
    3283:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3287:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
    328b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    328f:	48 8b 30             	mov    rsi,QWORD PTR [rax]
    3292:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3296:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    3299:	48 63 c8             	movsxd rcx,eax
    329c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    32a0:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    32a4:	48 0f af c1          	imul   rax,rcx
    32a8:	48 8d 0c 06          	lea    rcx,[rsi+rax*1]
    32ac:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    32b0:	48 89 c6             	mov    rsi,rax
    32b3:	48 89 cf             	mov    rdi,rcx
    32b6:	e8 95 ee ff ff       	call   2150 <memcpy@plt>
    32bb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    32bf:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
    32c2:	8d 50 01             	lea    edx,[rax+0x1]
    32c5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    32c9:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
    32cc:	90                   	nop
    32cd:	c9                   	leave
    32ce:	c3                   	ret

00000000000032cf <elem_at>:
    32cf:	55                   	push   rbp
    32d0:	48 89 e5             	mov    rbp,rsp
    32d3:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    32d7:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    32db:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    32df:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    32e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    32e6:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    32ea:	48 0f af 45 f0       	imul   rax,QWORD PTR [rbp-0x10]
    32ef:	48 01 d0             	add    rax,rdx
    32f2:	5d                   	pop    rbp
    32f3:	c3                   	ret

00000000000032f4 <free_vector>:
    32f4:	55                   	push   rbp
    32f5:	48 89 e5             	mov    rbp,rsp
    32f8:	48 83 ec 10          	sub    rsp,0x10
    32fc:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    3300:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3304:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3307:	48 89 c7             	mov    rdi,rax
    330a:	e8 a1 ed ff ff       	call   20b0 <free@plt>
    330f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    3313:	48 89 c7             	mov    rdi,rax
    3316:	e8 95 ed ff ff       	call   20b0 <free@plt>
    331b:	90                   	nop
    331c:	c9                   	leave
    331d:	c3                   	ret

Disassembly of section .fini:

0000000000003320 <_fini>:
    3320:	f3 0f 1e fa          	endbr64
    3324:	48 83 ec 08          	sub    rsp,0x8
    3328:	48 83 c4 08          	add    rsp,0x8
    332c:	c3                   	ret
