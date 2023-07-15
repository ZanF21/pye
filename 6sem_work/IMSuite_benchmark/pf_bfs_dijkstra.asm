
pf_bfs_dijkstra:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 b1 3f 00 00 	mov    0x3fb1(%rip),%rax        # 5fc0 <__gmon_start__@Base>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <printf@plt-0x10>:
    2020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 5ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 5ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002030 <printf@plt>:
    2030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 6000 <printf@GLIBC_2.2.5>
    2036:	68 00 00 00 00       	push   $0x0
    203b:	e9 e0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002040 <__isoc99_fscanf@plt>:
    2040:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 6008 <__isoc99_fscanf@GLIBC_2.7>
    2046:	68 01 00 00 00       	push   $0x1
    204b:	e9 d0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002050 <clock_gettime@plt>:
    2050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 6010 <clock_gettime@GLIBC_2.17>
    2056:	68 02 00 00 00       	push   $0x2
    205b:	e9 c0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>:
    2060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 6018 <GOMP_loop_maybe_nonmonotonic_runtime_next@GOMP_5.0>
    2066:	68 03 00 00 00       	push   $0x3
    206b:	e9 b0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002070 <__isoc99_sscanf@plt>:
    2070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 6020 <__isoc99_sscanf@GLIBC_2.7>
    2076:	68 04 00 00 00       	push   $0x4
    207b:	e9 a0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002080 <putchar@plt>:
    2080:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 6028 <putchar@GLIBC_2.2.5>
    2086:	68 05 00 00 00       	push   $0x5
    208b:	e9 90 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002090 <malloc@plt>:
    2090:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 6030 <malloc@GLIBC_2.2.5>
    2096:	68 06 00 00 00       	push   $0x6
    209b:	e9 80 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020a0 <fopen@plt>:
    20a0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 6038 <fopen@GLIBC_2.2.5>
    20a6:	68 07 00 00 00       	push   $0x7
    20ab:	e9 70 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020b0 <free@plt>:
    20b0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 6040 <free@GLIBC_2.2.5>
    20b6:	68 08 00 00 00       	push   $0x8
    20bb:	e9 60 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020c0 <GOMP_parallel@plt>:
    20c0:	ff 25 82 3f 00 00    	jmp    *0x3f82(%rip)        # 6048 <GOMP_parallel@GOMP_4.0>
    20c6:	68 09 00 00 00       	push   $0x9
    20cb:	e9 50 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>:
    20d0:	ff 25 7a 3f 00 00    	jmp    *0x3f7a(%rip)        # 6050 <GOMP_loop_maybe_nonmonotonic_runtime_start@GOMP_5.0>
    20d6:	68 0a 00 00 00       	push   $0xa
    20db:	e9 40 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020e0 <__stack_chk_fail@plt>:
    20e0:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 6058 <__stack_chk_fail@GLIBC_2.4>
    20e6:	68 0b 00 00 00       	push   $0xb
    20eb:	e9 30 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020f0 <strcmp@plt>:
    20f0:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 6060 <strcmp@GLIBC_2.2.5>
    20f6:	68 0c 00 00 00       	push   $0xc
    20fb:	e9 20 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002100 <calloc@plt>:
    2100:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 6068 <calloc@GLIBC_2.2.5>
    2106:	68 0d 00 00 00       	push   $0xd
    210b:	e9 10 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002110 <fclose@plt>:
    2110:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 6070 <fclose@GLIBC_2.2.5>
    2116:	68 0e 00 00 00       	push   $0xe
    211b:	e9 00 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002120 <realloc@plt>:
    2120:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 6078 <realloc@GLIBC_2.2.5>
    2126:	68 0f 00 00 00       	push   $0xf
    212b:	e9 f0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002130 <rand@plt>:
    2130:	ff 25 4a 3f 00 00    	jmp    *0x3f4a(%rip)        # 6080 <rand@GLIBC_2.2.5>
    2136:	68 10 00 00 00       	push   $0x10
    213b:	e9 e0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002140 <GOMP_loop_end_nowait@plt>:
    2140:	ff 25 42 3f 00 00    	jmp    *0x3f42(%rip)        # 6088 <GOMP_loop_end_nowait@GOMP_1.0>
    2146:	68 11 00 00 00       	push   $0x11
    214b:	e9 d0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002150 <memcpy@plt>:
    2150:	ff 25 3a 3f 00 00    	jmp    *0x3f3a(%rip)        # 6090 <memcpy@GLIBC_2.14>
    2156:	68 12 00 00 00       	push   $0x12
    215b:	e9 c0 fe ff ff       	jmp    2020 <_init+0x20>

Disassembly of section .text:

0000000000002160 <_start>:
    2160:	f3 0f 1e fa          	endbr64
    2164:	31 ed                	xor    %ebp,%ebp
    2166:	49 89 d1             	mov    %rdx,%r9
    2169:	5e                   	pop    %rsi
    216a:	48 89 e2             	mov    %rsp,%rdx
    216d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2171:	50                   	push   %rax
    2172:	54                   	push   %rsp
    2173:	45 31 c0             	xor    %r8d,%r8d
    2176:	31 c9                	xor    %ecx,%ecx
    2178:	48 8d 3d f5 02 00 00 	lea    0x2f5(%rip),%rdi        # 2474 <main>
    217f:	ff 15 5b 3e 00 00    	call   *0x3e5b(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.34>
    2185:	f4                   	hlt
    2186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    218d:	00 00 00 
    2190:	48 8d 3d 11 3f 00 00 	lea    0x3f11(%rip),%rdi        # 60a8 <__TMC_END__>
    2197:	48 8d 05 0a 3f 00 00 	lea    0x3f0a(%rip),%rax        # 60a8 <__TMC_END__>
    219e:	48 39 f8             	cmp    %rdi,%rax
    21a1:	74 15                	je     21b8 <_start+0x58>
    21a3:	48 8b 05 1e 3e 00 00 	mov    0x3e1e(%rip),%rax        # 5fc8 <_ITM_deregisterTMCloneTable@Base>
    21aa:	48 85 c0             	test   %rax,%rax
    21ad:	74 09                	je     21b8 <_start+0x58>
    21af:	ff e0                	jmp    *%rax
    21b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    21b8:	c3                   	ret
    21b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    21c0:	48 8d 3d e1 3e 00 00 	lea    0x3ee1(%rip),%rdi        # 60a8 <__TMC_END__>
    21c7:	48 8d 35 da 3e 00 00 	lea    0x3eda(%rip),%rsi        # 60a8 <__TMC_END__>
    21ce:	48 29 fe             	sub    %rdi,%rsi
    21d1:	48 89 f0             	mov    %rsi,%rax
    21d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    21d8:	48 c1 f8 03          	sar    $0x3,%rax
    21dc:	48 01 c6             	add    %rax,%rsi
    21df:	48 d1 fe             	sar    %rsi
    21e2:	74 14                	je     21f8 <_start+0x98>
    21e4:	48 8b 05 e5 3d 00 00 	mov    0x3de5(%rip),%rax        # 5fd0 <_ITM_registerTMCloneTable@Base>
    21eb:	48 85 c0             	test   %rax,%rax
    21ee:	74 08                	je     21f8 <_start+0x98>
    21f0:	ff e0                	jmp    *%rax
    21f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    21f8:	c3                   	ret
    21f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2200:	f3 0f 1e fa          	endbr64
    2204:	80 3d a5 3e 00 00 00 	cmpb   $0x0,0x3ea5(%rip)        # 60b0 <__TMC_END__+0x8>
    220b:	75 33                	jne    2240 <_start+0xe0>
    220d:	55                   	push   %rbp
    220e:	48 83 3d c2 3d 00 00 	cmpq   $0x0,0x3dc2(%rip)        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    2215:	00 
    2216:	48 89 e5             	mov    %rsp,%rbp
    2219:	74 0d                	je     2228 <_start+0xc8>
    221b:	48 8b 3d 7e 3e 00 00 	mov    0x3e7e(%rip),%rdi        # 60a0 <__dso_handle>
    2222:	ff 15 b0 3d 00 00    	call   *0x3db0(%rip)        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    2228:	e8 63 ff ff ff       	call   2190 <_start+0x30>
    222d:	c6 05 7c 3e 00 00 01 	movb   $0x1,0x3e7c(%rip)        # 60b0 <__TMC_END__+0x8>
    2234:	5d                   	pop    %rbp
    2235:	c3                   	ret
    2236:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    223d:	00 00 00 
    2240:	c3                   	ret
    2241:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2248:	00 00 00 00 
    224c:	0f 1f 40 00          	nopl   0x0(%rax)
    2250:	f3 0f 1e fa          	endbr64
    2254:	e9 67 ff ff ff       	jmp    21c0 <_start+0x60>

0000000000002259 <initialize_graph>:
    2259:	55                   	push   %rbp
    225a:	48 89 e5             	mov    %rsp,%rbp
    225d:	48 83 ec 30          	sub    $0x30,%rsp
    2261:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2265:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    226c:	00 00 
    226e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2272:	31 c0                	xor    %eax,%eax
    2274:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2278:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    227c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2280:	b9 00 00 00 00       	mov    $0x0,%ecx
    2285:	ba 00 00 00 00       	mov    $0x0,%edx
    228a:	48 89 c6             	mov    %rax,%rsi
    228d:	48 8d 05 30 04 00 00 	lea    0x430(%rip),%rax        # 26c4 <initialize_graph._omp_fn.0>
    2294:	48 89 c7             	mov    %rax,%rdi
    2297:	e8 24 fe ff ff       	call   20c0 <GOMP_parallel@plt>
    229c:	8b 05 12 3e 00 00    	mov    0x3e12(%rip),%eax        # 60b4 <ROOT>
    22a2:	48 63 d0             	movslq %eax,%rdx
    22a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    22a9:	48 89 d6             	mov    %rdx,%rsi
    22ac:	48 89 c7             	mov    %rax,%rdi
    22af:	e8 7d 11 00 00       	call   3431 <elem_at>
    22b4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    22b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22bc:	48 8b 40 20          	mov    0x20(%rax),%rax
    22c0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    22c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    22c8:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
    22cf:	90                   	nop
    22d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    22d4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    22db:	00 00 
    22dd:	74 05                	je     22e4 <initialize_graph+0x8b>
    22df:	e8 fc fd ff ff       	call   20e0 <__stack_chk_fail@plt>
    22e4:	c9                   	leave
    22e5:	c3                   	ret

00000000000022e6 <broadcast_start>:
    22e6:	55                   	push   %rbp
    22e7:	48 89 e5             	mov    %rsp,%rbp
    22ea:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    22ee:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    22f2:	89 75 84             	mov    %esi,-0x7c(%rbp)
    22f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    22fc:	00 00 
    22fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2302:	31 c0                	xor    %eax,%eax
    2304:	c7 45 a0 01 00 00 00 	movl   $0x1,-0x60(%rbp)
    230b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    230f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    2313:	c7 45 a4 02 00 00 00 	movl   $0x2,-0x5c(%rbp)
    231a:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
    2321:	eb 5d                	jmp    2380 <broadcast_start+0x9a>
    2323:	8b 45 9c             	mov    -0x64(%rbp),%eax
    2326:	48 63 d0             	movslq %eax,%rdx
    2329:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    232d:	48 89 d6             	mov    %rdx,%rsi
    2330:	48 89 c7             	mov    %rax,%rdi
    2333:	e8 f9 10 00 00       	call   3431 <elem_at>
    2338:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    233c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2340:	48 8b 40 20          	mov    0x20(%rax),%rax
    2344:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2348:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    234c:	0f 18 08             	prefetcht0 (%rax)
    234f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2353:	0f 18 08             	prefetcht0 (%rax)
    2356:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    235a:	8b 40 04             	mov    0x4(%rax),%eax
    235d:	39 45 84             	cmp    %eax,-0x7c(%rbp)
    2360:	75 1a                	jne    237c <broadcast_start+0x96>
    2362:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2366:	48 05 00 30 00 00    	add    $0x3000,%rax
    236c:	0f 18 08             	prefetcht0 (%rax)
    236f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2373:	48 05 00 60 00 00    	add    $0x6000,%rax
    2379:	0f 18 08             	prefetcht0 (%rax)
    237c:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
    2380:	8b 45 9c             	mov    -0x64(%rbp),%eax
    2383:	3b 45 a4             	cmp    -0x5c(%rbp),%eax
    2386:	7c 9b                	jl     2323 <broadcast_start+0x3d>
    2388:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    238b:	89 45 e8             	mov    %eax,-0x18(%rbp)
    238e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2392:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2396:	8b 45 84             	mov    -0x7c(%rbp),%eax
    2399:	89 45 e0             	mov    %eax,-0x20(%rbp)
    239c:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    23a0:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    23a4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    23a8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    23ac:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    23b0:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    23b4:	8b 45 a0             	mov    -0x60(%rbp),%eax
    23b7:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    23ba:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    23be:	b9 00 00 00 00       	mov    $0x0,%ecx
    23c3:	ba 00 00 00 00       	mov    $0x0,%edx
    23c8:	48 89 c6             	mov    %rax,%rsi
    23cb:	48 8d 05 da 03 00 00 	lea    0x3da(%rip),%rax        # 27ac <broadcast_start._omp_fn.0>
    23d2:	48 89 c7             	mov    %rax,%rdi
    23d5:	e8 e6 fc ff ff       	call   20c0 <GOMP_parallel@plt>
    23da:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    23de:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    23e2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    23e6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    23ea:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    23ed:	89 45 a0             	mov    %eax,-0x60(%rbp)
    23f0:	8b 45 a0             	mov    -0x60(%rbp),%eax
    23f3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    23f7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    23fe:	00 00 
    2400:	74 05                	je     2407 <broadcast_start+0x121>
    2402:	e8 d9 fc ff ff       	call   20e0 <__stack_chk_fail@plt>
    2407:	c9                   	leave
    2408:	c3                   	ret

0000000000002409 <print_solution>:
    2409:	55                   	push   %rbp
    240a:	48 89 e5             	mov    %rsp,%rbp
    240d:	48 83 ec 30          	sub    $0x30,%rsp
    2411:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2415:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    241c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    2423:	eb 3f                	jmp    2464 <print_solution+0x5b>
    2425:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2428:	48 63 d0             	movslq %eax,%rdx
    242b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    242f:	48 89 d6             	mov    %rdx,%rsi
    2432:	48 89 c7             	mov    %rax,%rdi
    2435:	e8 f7 0f 00 00       	call   3431 <elem_at>
    243a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    243e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2442:	48 8b 40 20          	mov    0x20(%rax),%rax
    2446:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    244a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    244e:	8b 40 04             	mov    0x4(%rax),%eax
    2451:	39 45 e8             	cmp    %eax,-0x18(%rbp)
    2454:	7d 0a                	jge    2460 <print_solution+0x57>
    2456:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    245a:	8b 40 04             	mov    0x4(%rax),%eax
    245d:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2460:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    2464:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2468:	8b 40 18             	mov    0x18(%rax),%eax
    246b:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    246e:	7c b5                	jl     2425 <print_solution+0x1c>
    2470:	90                   	nop
    2471:	90                   	nop
    2472:	c9                   	leave
    2473:	c3                   	ret

0000000000002474 <main>:
    2474:	55                   	push   %rbp
    2475:	48 89 e5             	mov    %rsp,%rbp
    2478:	48 83 ec 50          	sub    $0x50,%rsp
    247c:	89 7d bc             	mov    %edi,-0x44(%rbp)
    247f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2483:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    248a:	00 00 
    248c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2490:	31 c0                	xor    %eax,%eax
    2492:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%rbp)
    2499:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    249d:	8b 45 bc             	mov    -0x44(%rbp),%eax
    24a0:	48 89 d6             	mov    %rdx,%rsi
    24a3:	89 c7                	mov    %eax,%edi
    24a5:	e8 64 0d 00 00       	call   320e <input_through_argv>
    24aa:	89 45 dc             	mov    %eax,-0x24(%rbp)
    24ad:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    24b1:	0f 84 c9 00 00 00    	je     2580 <main+0x10c>
    24b7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    24bb:	48 83 c0 10          	add    $0x10,%rax
    24bf:	48 8b 00             	mov    (%rax),%rax
    24c2:	48 8d 15 3b 1b 00 00 	lea    0x1b3b(%rip),%rdx        # 4004 <_IO_stdin_used+0x4>
    24c9:	48 89 d6             	mov    %rdx,%rsi
    24cc:	48 89 c7             	mov    %rax,%rdi
    24cf:	e8 cc fb ff ff       	call   20a0 <fopen@plt>
    24d4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    24d8:	48 8d 55 c4          	lea    -0x3c(%rbp),%rdx
    24dc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    24e0:	48 8d 0d 1f 1b 00 00 	lea    0x1b1f(%rip),%rcx        # 4006 <_IO_stdin_used+0x6>
    24e7:	48 89 ce             	mov    %rcx,%rsi
    24ea:	48 89 c7             	mov    %rax,%rdi
    24ed:	b8 00 00 00 00       	mov    $0x0,%eax
    24f2:	e8 49 fb ff ff       	call   2040 <__isoc99_fscanf@plt>
    24f7:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    24fa:	be 00 00 00 00       	mov    $0x0,%esi
    24ff:	89 c7                	mov    %eax,%edi
    2501:	e8 b2 04 00 00       	call   29b8 <new_graph>
    2506:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    250a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    250e:	48 8d 15 9f 3b 00 00 	lea    0x3b9f(%rip),%rdx        # 60b4 <ROOT>
    2515:	48 8d 0d ea 1a 00 00 	lea    0x1aea(%rip),%rcx        # 4006 <_IO_stdin_used+0x6>
    251c:	48 89 ce             	mov    %rcx,%rsi
    251f:	48 89 c7             	mov    %rax,%rdi
    2522:	b8 00 00 00 00       	mov    $0x0,%eax
    2527:	e8 14 fb ff ff       	call   2040 <__isoc99_fscanf@plt>
    252c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    2530:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2534:	48 89 d6             	mov    %rdx,%rsi
    2537:	48 89 c7             	mov    %rax,%rdi
    253a:	e8 48 05 00 00       	call   2a87 <read_graph>
    253f:	89 45 c8             	mov    %eax,-0x38(%rbp)
    2542:	8b 55 c8             	mov    -0x38(%rbp),%edx
    2545:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2549:	89 50 1c             	mov    %edx,0x1c(%rax)
    254c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2550:	48 89 c7             	mov    %rax,%rdi
    2553:	e8 b8 fb ff ff       	call   2110 <fclose@plt>
    2558:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    255c:	48 83 c0 18          	add    $0x18,%rax
    2560:	48 8b 00             	mov    (%rax),%rax
    2563:	48 8d 55 cc          	lea    -0x34(%rbp),%rdx
    2567:	48 8d 0d 9c 1a 00 00 	lea    0x1a9c(%rip),%rcx        # 400a <_IO_stdin_used+0xa>
    256e:	48 89 ce             	mov    %rcx,%rsi
    2571:	48 89 c7             	mov    %rax,%rdi
    2574:	b8 00 00 00 00       	mov    $0x0,%eax
    2579:	e8 f2 fa ff ff       	call   2070 <__isoc99_sscanf@plt>
    257e:	eb 7d                	jmp    25fd <main+0x189>
    2580:	c7 45 c4 10 00 00 00 	movl   $0x10,-0x3c(%rbp)
    2587:	c7 45 c8 40 00 00 00 	movl   $0x40,-0x38(%rbp)
    258e:	83 7d bc 01          	cmpl   $0x1,-0x44(%rbp)
    2592:	7e 4c                	jle    25e0 <main+0x16c>
    2594:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2598:	48 83 c0 08          	add    $0x8,%rax
    259c:	48 8b 00             	mov    (%rax),%rax
    259f:	48 8d 55 c4          	lea    -0x3c(%rbp),%rdx
    25a3:	48 8d 0d 60 1a 00 00 	lea    0x1a60(%rip),%rcx        # 400a <_IO_stdin_used+0xa>
    25aa:	48 89 ce             	mov    %rcx,%rsi
    25ad:	48 89 c7             	mov    %rax,%rdi
    25b0:	b8 00 00 00 00       	mov    $0x0,%eax
    25b5:	e8 b6 fa ff ff       	call   2070 <__isoc99_sscanf@plt>
    25ba:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    25be:	48 83 c0 10          	add    $0x10,%rax
    25c2:	48 8b 00             	mov    (%rax),%rax
    25c5:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    25c9:	48 8d 0d 3a 1a 00 00 	lea    0x1a3a(%rip),%rcx        # 400a <_IO_stdin_used+0xa>
    25d0:	48 89 ce             	mov    %rcx,%rsi
    25d3:	48 89 c7             	mov    %rax,%rdi
    25d6:	b8 00 00 00 00       	mov    $0x0,%eax
    25db:	e8 90 fa ff ff       	call   2070 <__isoc99_sscanf@plt>
    25e0:	8b 55 c8             	mov    -0x38(%rbp),%edx
    25e3:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    25e6:	89 d6                	mov    %edx,%esi
    25e8:	89 c7                	mov    %eax,%edi
    25ea:	e8 95 0b 00 00       	call   3184 <generate_new_connected_graph>
    25ef:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    25f3:	c7 05 b7 3a 00 00 00 	movl   $0x0,0x3ab7(%rip)        # 60b4 <ROOT>
    25fa:	00 00 00 
    25fd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    2604:	00 
    2605:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
    260c:	eb 56                	jmp    2664 <main+0x1f0>
    260e:	b8 00 00 00 00       	mov    $0x0,%eax
    2613:	e8 47 0c 00 00       	call   325f <begin_timer>
    2618:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    261f:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    2626:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    262a:	48 89 c7             	mov    %rax,%rdi
    262d:	e8 27 fc ff ff       	call   2259 <initialize_graph>
    2632:	eb 18                	jmp    264c <main+0x1d8>
    2634:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    2637:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    263b:	89 d6                	mov    %edx,%esi
    263d:	48 89 c7             	mov    %rax,%rdi
    2640:	e8 a1 fc ff ff       	call   22e6 <broadcast_start>
    2645:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2648:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
    264c:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
    2650:	74 e2                	je     2634 <main+0x1c0>
    2652:	b8 00 00 00 00       	mov    $0x0,%eax
    2657:	e8 1e 0c 00 00       	call   327a <time_elapsed>
    265c:	48 01 45 e8          	add    %rax,-0x18(%rbp)
    2660:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
    2664:	8b 45 cc             	mov    -0x34(%rbp),%eax
    2667:	39 45 d0             	cmp    %eax,-0x30(%rbp)
    266a:	7c a2                	jl     260e <main+0x19a>
    266c:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    2670:	74 37                	je     26a9 <main+0x235>
    2672:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2676:	f2 48 0f 2a 45 e8    	cvtsi2sdq -0x18(%rbp),%xmm0
    267c:	8b 45 cc             	mov    -0x34(%rbp),%eax
    267f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2683:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    2687:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    268b:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2690:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2695:	48 8d 05 71 19 00 00 	lea    0x1971(%rip),%rax        # 400d <_IO_stdin_used+0xd>
    269c:	48 89 c7             	mov    %rax,%rdi
    269f:	b8 01 00 00 00       	mov    $0x1,%eax
    26a4:	e8 87 f9 ff ff       	call   2030 <printf@plt>
    26a9:	b8 00 00 00 00       	mov    $0x0,%eax
    26ae:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    26b2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    26b9:	00 00 
    26bb:	74 05                	je     26c2 <main+0x24e>
    26bd:	e8 1e fa ff ff       	call   20e0 <__stack_chk_fail@plt>
    26c2:	c9                   	leave
    26c3:	c3                   	ret

00000000000026c4 <initialize_graph._omp_fn.0>:
    26c4:	55                   	push   %rbp
    26c5:	48 89 e5             	mov    %rsp,%rbp
    26c8:	53                   	push   %rbx
    26c9:	48 83 ec 58          	sub    $0x58,%rsp
    26cd:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    26d1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26d8:	00 00 
    26da:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    26de:	31 c0                	xor    %eax,%eax
    26e0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    26e4:	48 8b 00             	mov    (%rax),%rax
    26e7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    26eb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    26ef:	8b 40 18             	mov    0x18(%rax),%eax
    26f2:	48 98                	cltq
    26f4:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
    26f8:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    26fc:	49 89 c8             	mov    %rcx,%r8
    26ff:	48 89 d1             	mov    %rdx,%rcx
    2702:	ba 01 00 00 00       	mov    $0x1,%edx
    2707:	48 89 c6             	mov    %rax,%rsi
    270a:	bf 00 00 00 00       	mov    $0x0,%edi
    270f:	e8 bc f9 ff ff       	call   20d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>
    2714:	84 c0                	test   %al,%al
    2716:	74 75                	je     278d <initialize_graph._omp_fn.0+0xc9>
    2718:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    271c:	89 45 bc             	mov    %eax,-0x44(%rbp)
    271f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2723:	89 c3                	mov    %eax,%ebx
    2725:	8b 45 bc             	mov    -0x44(%rbp),%eax
    2728:	48 63 d0             	movslq %eax,%rdx
    272b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    272f:	48 89 d6             	mov    %rdx,%rsi
    2732:	48 89 c7             	mov    %rax,%rdi
    2735:	e8 f7 0c 00 00       	call   3431 <elem_at>
    273a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    273e:	bf c0 00 00 00       	mov    $0xc0,%edi
    2743:	e8 48 f9 ff ff       	call   2090 <malloc@plt>
    2748:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    274c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2750:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
    2756:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    275a:	c7 40 04 ff ff ff ff 	movl   $0xffffffff,0x4(%rax)
    2761:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2765:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2769:	48 89 50 20          	mov    %rdx,0x20(%rax)
    276d:	83 45 bc 01          	addl   $0x1,-0x44(%rbp)
    2771:	39 5d bc             	cmp    %ebx,-0x44(%rbp)
    2774:	7c af                	jl     2725 <initialize_graph._omp_fn.0+0x61>
    2776:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    277a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    277e:	48 89 d6             	mov    %rdx,%rsi
    2781:	48 89 c7             	mov    %rax,%rdi
    2784:	e8 d7 f8 ff ff       	call   2060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>
    2789:	84 c0                	test   %al,%al
    278b:	75 8b                	jne    2718 <initialize_graph._omp_fn.0+0x54>
    278d:	e8 ae f9 ff ff       	call   2140 <GOMP_loop_end_nowait@plt>
    2792:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2796:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    279d:	00 00 
    279f:	74 05                	je     27a6 <initialize_graph._omp_fn.0+0xe2>
    27a1:	e8 3a f9 ff ff       	call   20e0 <__stack_chk_fail@plt>
    27a6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    27aa:	c9                   	leave
    27ab:	c3                   	ret

00000000000027ac <broadcast_start._omp_fn.0>:
    27ac:	55                   	push   %rbp
    27ad:	48 89 e5             	mov    %rsp,%rbp
    27b0:	53                   	push   %rbx
    27b1:	48 83 ec 78          	sub    $0x78,%rsp
    27b5:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    27b9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27c0:	00 00 
    27c2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    27c6:	31 c0                	xor    %eax,%eax
    27c8:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    27cc:	8b 40 28             	mov    0x28(%rax),%eax
    27cf:	89 45 a0             	mov    %eax,-0x60(%rbp)
    27d2:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    27d6:	48 8b 40 08          	mov    0x8(%rax),%rax
    27da:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    27de:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    27e2:	8b 40 20             	mov    0x20(%rax),%eax
    27e5:	89 45 a4             	mov    %eax,-0x5c(%rbp)
    27e8:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    27ec:	48 8b 00             	mov    (%rax),%rax
    27ef:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    27f3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    27f7:	8b 40 18             	mov    0x18(%rax),%eax
    27fa:	48 98                	cltq
    27fc:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
    2800:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
    2804:	49 89 c8             	mov    %rcx,%r8
    2807:	48 89 d1             	mov    %rdx,%rcx
    280a:	ba 01 00 00 00       	mov    $0x1,%edx
    280f:	48 89 c6             	mov    %rax,%rsi
    2812:	bf 00 00 00 00       	mov    $0x0,%edi
    2817:	e8 b4 f8 ff ff       	call   20d0 <GOMP_loop_maybe_nonmonotonic_runtime_start@plt>
    281c:	84 c0                	test   %al,%al
    281e:	0f 84 75 01 00 00    	je     2999 <broadcast_start._omp_fn.0+0x1ed>
    2824:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2828:	89 45 98             	mov    %eax,-0x68(%rbp)
    282b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    282f:	89 c3                	mov    %eax,%ebx
    2831:	8b 55 98             	mov    -0x68(%rbp),%edx
    2834:	8b 45 a0             	mov    -0x60(%rbp),%eax
    2837:	01 c2                	add    %eax,%edx
    2839:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    283d:	8b 40 18             	mov    0x18(%rax),%eax
    2840:	39 c2                	cmp    %eax,%edx
    2842:	0f 8c ca 00 00 00    	jl     2912 <broadcast_start._omp_fn.0+0x166>
    2848:	8b 45 98             	mov    -0x68(%rbp),%eax
    284b:	48 63 d0             	movslq %eax,%rdx
    284e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2852:	48 89 d6             	mov    %rdx,%rsi
    2855:	48 89 c7             	mov    %rax,%rdi
    2858:	e8 d4 0b 00 00       	call   3431 <elem_at>
    285d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2861:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2865:	48 8b 40 20          	mov    0x20(%rax),%rax
    2869:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    286d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2871:	8b 40 04             	mov    0x4(%rax),%eax
    2874:	3b 45 a4             	cmp    -0x5c(%rbp),%eax
    2877:	74 25                	je     289e <broadcast_start._omp_fn.0+0xf2>
    2879:	83 45 98 01          	addl   $0x1,-0x68(%rbp)
    287d:	39 5d 98             	cmp    %ebx,-0x68(%rbp)
    2880:	7c af                	jl     2831 <broadcast_start._omp_fn.0+0x85>
    2882:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    2886:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    288a:	48 89 d6             	mov    %rdx,%rsi
    288d:	48 89 c7             	mov    %rax,%rdi
    2890:	e8 cb f7 ff ff       	call   2060 <GOMP_loop_maybe_nonmonotonic_runtime_next@plt>
    2895:	84 c0                	test   %al,%al
    2897:	75 8b                	jne    2824 <broadcast_start._omp_fn.0+0x78>
    2899:	e9 fb 00 00 00       	jmp    2999 <broadcast_start._omp_fn.0+0x1ed>
    289e:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
    28a5:	90                   	nop
    28a6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    28aa:	8b 40 18             	mov    0x18(%rax),%eax
    28ad:	3b 45 9c             	cmp    -0x64(%rbp),%eax
    28b0:	7e c7                	jle    2879 <broadcast_start._omp_fn.0+0xcd>
    28b2:	8b 45 9c             	mov    -0x64(%rbp),%eax
    28b5:	48 63 d0             	movslq %eax,%rdx
    28b8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    28bc:	48 89 d6             	mov    %rdx,%rsi
    28bf:	48 89 c7             	mov    %rax,%rdi
    28c2:	e8 6a 0b 00 00       	call   3431 <elem_at>
    28c7:	48 8b 00             	mov    (%rax),%rax
    28ca:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    28ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    28d2:	48 8b 40 20          	mov    0x20(%rax),%rax
    28d6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    28da:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    28de:	8b 40 04             	mov    0x4(%rax),%eax
    28e1:	85 c0                	test   %eax,%eax
    28e3:	78 06                	js     28eb <broadcast_start._omp_fn.0+0x13f>
    28e5:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
    28e9:	eb bb                	jmp    28a6 <broadcast_start._omp_fn.0+0xfa>
    28eb:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    28ee:	8d 50 01             	lea    0x1(%rax),%edx
    28f1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    28f5:	89 50 04             	mov    %edx,0x4(%rax)
    28f8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    28fc:	8b 50 28             	mov    0x28(%rax),%edx
    28ff:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2903:	89 10                	mov    %edx,(%rax)
    2905:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2909:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%rax)
    2910:	eb d3                	jmp    28e5 <broadcast_start._omp_fn.0+0x139>
    2912:	8b 55 98             	mov    -0x68(%rbp),%edx
    2915:	8b 45 a0             	mov    -0x60(%rbp),%eax
    2918:	01 d0                	add    %edx,%eax
    291a:	48 63 d0             	movslq %eax,%rdx
    291d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2921:	48 89 d6             	mov    %rdx,%rsi
    2924:	48 89 c7             	mov    %rax,%rdi
    2927:	e8 05 0b 00 00       	call   3431 <elem_at>
    292c:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    2930:	48 89 42 10          	mov    %rax,0x10(%rdx)
    2934:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2938:	48 8b 40 10          	mov    0x10(%rax),%rax
    293c:	48 8b 50 20          	mov    0x20(%rax),%rdx
    2940:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2944:	48 89 50 18          	mov    %rdx,0x18(%rax)
    2948:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    294c:	48 8b 40 10          	mov    0x10(%rax),%rax
    2950:	0f 18 08             	prefetcht0 (%rax)
    2953:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2957:	48 8b 40 18          	mov    0x18(%rax),%rax
    295b:	0f 18 08             	prefetcht0 (%rax)
    295e:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2962:	48 8b 40 18          	mov    0x18(%rax),%rax
    2966:	8b 40 04             	mov    0x4(%rax),%eax
    2969:	3b 45 a4             	cmp    -0x5c(%rbp),%eax
    296c:	0f 85 d6 fe ff ff    	jne    2848 <broadcast_start._omp_fn.0+0x9c>
    2972:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2976:	48 8b 40 18          	mov    0x18(%rax),%rax
    297a:	48 05 00 30 00 00    	add    $0x3000,%rax
    2980:	0f 18 08             	prefetcht0 (%rax)
    2983:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    2987:	48 8b 40 18          	mov    0x18(%rax),%rax
    298b:	48 05 00 60 00 00    	add    $0x6000,%rax
    2991:	0f 18 08             	prefetcht0 (%rax)
    2994:	e9 af fe ff ff       	jmp    2848 <broadcast_start._omp_fn.0+0x9c>
    2999:	e8 a2 f7 ff ff       	call   2140 <GOMP_loop_end_nowait@plt>
    299e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    29a2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    29a9:	00 00 
    29ab:	74 05                	je     29b2 <broadcast_start._omp_fn.0+0x206>
    29ad:	e8 2e f7 ff ff       	call   20e0 <__stack_chk_fail@plt>
    29b2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    29b6:	c9                   	leave
    29b7:	c3                   	ret

00000000000029b8 <new_graph>:
    29b8:	55                   	push   %rbp
    29b9:	48 89 e5             	mov    %rsp,%rbp
    29bc:	48 83 ec 60          	sub    $0x60,%rsp
    29c0:	89 7d ac             	mov    %edi,-0x54(%rbp)
    29c3:	89 75 a8             	mov    %esi,-0x58(%rbp)
    29c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    29cd:	00 00 
    29cf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    29d3:	31 c0                	xor    %eax,%eax
    29d5:	bf 30 00 00 00       	mov    $0x30,%edi
    29da:	e8 b1 f6 ff ff       	call   2090 <malloc@plt>
    29df:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    29e3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    29e7:	8b 55 ac             	mov    -0x54(%rbp),%edx
    29ea:	89 50 18             	mov    %edx,0x18(%rax)
    29ed:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    29f1:	8b 55 a8             	mov    -0x58(%rbp),%edx
    29f4:	89 50 1c             	mov    %edx,0x1c(%rax)
    29f7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    29fb:	be 30 00 00 00       	mov    $0x30,%esi
    2a00:	48 89 c7             	mov    %rax,%rdi
    2a03:	e8 e6 08 00 00       	call   32ee <initialize_vector>
    2a08:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%rbp)
    2a0f:	eb 44                	jmp    2a55 <new_graph+0x9d>
    2a11:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2a15:	be 08 00 00 00       	mov    $0x8,%esi
    2a1a:	48 89 c7             	mov    %rax,%rdi
    2a1d:	e8 cc 08 00 00       	call   32ee <initialize_vector>
    2a22:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    2a29:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    2a30:	00 
    2a31:	8b 45 b4             	mov    -0x4c(%rbp),%eax
    2a34:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2a37:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    2a3e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2a42:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    2a46:	48 89 d6             	mov    %rdx,%rsi
    2a49:	48 89 c7             	mov    %rax,%rdi
    2a4c:	e8 2d 09 00 00       	call   337e <append_to_vector>
    2a51:	83 45 b4 01          	addl   $0x1,-0x4c(%rbp)
    2a55:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2a59:	8b 40 18             	mov    0x18(%rax),%eax
    2a5c:	39 45 b4             	cmp    %eax,-0x4c(%rbp)
    2a5f:	7c b0                	jl     2a11 <new_graph+0x59>
    2a61:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2a65:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
    2a6c:	00 
    2a6d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2a71:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2a75:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2a7c:	00 00 
    2a7e:	74 05                	je     2a85 <new_graph+0xcd>
    2a80:	e8 5b f6 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2a85:	c9                   	leave
    2a86:	c3                   	ret

0000000000002a87 <read_graph>:
    2a87:	55                   	push   %rbp
    2a88:	48 89 e5             	mov    %rsp,%rbp
    2a8b:	48 83 ec 30          	sub    $0x30,%rsp
    2a8f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2a93:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2a97:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    2a9e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2aa2:	8b 40 18             	mov    0x18(%rax),%eax
    2aa5:	83 c0 02             	add    $0x2,%eax
    2aa8:	48 98                	cltq
    2aaa:	48 89 c7             	mov    %rax,%rdi
    2aad:	e8 de f5 ff ff       	call   2090 <malloc@plt>
    2ab2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2ab6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    2abd:	eb 74                	jmp    2b33 <read_graph+0xac>
    2abf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2ac3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2ac7:	48 8d 0d 46 15 00 00 	lea    0x1546(%rip),%rcx        # 4014 <_IO_stdin_used+0x14>
    2ace:	48 89 ce             	mov    %rcx,%rsi
    2ad1:	48 89 c7             	mov    %rax,%rdi
    2ad4:	b8 00 00 00 00       	mov    $0x0,%eax
    2ad9:	e8 62 f5 ff ff       	call   2040 <__isoc99_fscanf@plt>
    2ade:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    2ae5:	eb 3c                	jmp    2b23 <read_graph+0x9c>
    2ae7:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2aea:	48 63 d0             	movslq %eax,%rdx
    2aed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2af1:	48 01 d0             	add    %rdx,%rax
    2af4:	0f b6 00             	movzbl (%rax),%eax
    2af7:	0f be c0             	movsbl %al,%eax
    2afa:	83 f8 30             	cmp    $0x30,%eax
    2afd:	74 1f                	je     2b1e <read_graph+0x97>
    2aff:	83 f8 31             	cmp    $0x31,%eax
    2b02:	75 1b                	jne    2b1f <read_graph+0x98>
    2b04:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    2b08:	8b 55 f4             	mov    -0xc(%rbp),%edx
    2b0b:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    2b0e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2b12:	89 ce                	mov    %ecx,%esi
    2b14:	48 89 c7             	mov    %rax,%rdi
    2b17:	e8 28 02 00 00       	call   2d44 <add_edge>
    2b1c:	eb 01                	jmp    2b1f <read_graph+0x98>
    2b1e:	90                   	nop
    2b1f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    2b23:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2b27:	8b 40 18             	mov    0x18(%rax),%eax
    2b2a:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    2b2d:	7c b8                	jl     2ae7 <read_graph+0x60>
    2b2f:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    2b33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2b37:	8b 40 18             	mov    0x18(%rax),%eax
    2b3a:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    2b3d:	7c 80                	jl     2abf <read_graph+0x38>
    2b3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2b43:	48 89 c7             	mov    %rax,%rdi
    2b46:	e8 65 f5 ff ff       	call   20b0 <free@plt>
    2b4b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2b4e:	89 c2                	mov    %eax,%edx
    2b50:	c1 ea 1f             	shr    $0x1f,%edx
    2b53:	01 d0                	add    %edx,%eax
    2b55:	d1 f8                	sar    %eax
    2b57:	c9                   	leave
    2b58:	c3                   	ret

0000000000002b59 <read_weights>:
    2b59:	55                   	push   %rbp
    2b5a:	48 89 e5             	mov    %rsp,%rbp
    2b5d:	48 83 ec 30          	sub    $0x30,%rsp
    2b61:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2b65:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2b69:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2b70:	00 00 
    2b72:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2b76:	31 c0                	xor    %eax,%eax
    2b78:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    2b7f:	e9 a3 00 00 00       	jmp    2c27 <read_weights+0xce>
    2b84:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    2b8b:	e9 83 00 00 00       	jmp    2c13 <read_weights+0xba>
    2b90:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
    2b94:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2b98:	48 8d 0d 78 14 00 00 	lea    0x1478(%rip),%rcx        # 4017 <_IO_stdin_used+0x17>
    2b9f:	48 89 ce             	mov    %rcx,%rsi
    2ba2:	48 89 c7             	mov    %rax,%rdi
    2ba5:	b8 00 00 00 00       	mov    $0x0,%eax
    2baa:	e8 91 f4 ff ff       	call   2040 <__isoc99_fscanf@plt>
    2baf:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2bb2:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    2bb5:	74 57                	je     2c0e <read_weights+0xb5>
    2bb7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2bbb:	48 8b 40 20          	mov    0x20(%rax),%rax
    2bbf:	8b 55 f4             	mov    -0xc(%rbp),%edx
    2bc2:	48 63 d2             	movslq %edx,%rdx
    2bc5:	48 c1 e2 03          	shl    $0x3,%rdx
    2bc9:	48 01 d0             	add    %rdx,%rax
    2bcc:	48 8b 00             	mov    (%rax),%rax
    2bcf:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2bd2:	48 63 d2             	movslq %edx,%rdx
    2bd5:	48 c1 e2 02          	shl    $0x2,%rdx
    2bd9:	48 01 d0             	add    %rdx,%rax
    2bdc:	8b 00                	mov    (%rax),%eax
    2bde:	85 c0                	test   %eax,%eax
    2be0:	74 2d                	je     2c0f <read_weights+0xb6>
    2be2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2be6:	48 8b 40 20          	mov    0x20(%rax),%rax
    2bea:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2bed:	48 63 d2             	movslq %edx,%rdx
    2bf0:	48 c1 e2 03          	shl    $0x3,%rdx
    2bf4:	48 01 d0             	add    %rdx,%rax
    2bf7:	48 8b 00             	mov    (%rax),%rax
    2bfa:	8b 55 f4             	mov    -0xc(%rbp),%edx
    2bfd:	48 63 d2             	movslq %edx,%rdx
    2c00:	48 c1 e2 02          	shl    $0x2,%rdx
    2c04:	48 01 c2             	add    %rax,%rdx
    2c07:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2c0a:	89 02                	mov    %eax,(%rdx)
    2c0c:	eb 01                	jmp    2c0f <read_weights+0xb6>
    2c0e:	90                   	nop
    2c0f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    2c13:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2c17:	8b 40 18             	mov    0x18(%rax),%eax
    2c1a:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    2c1d:	0f 8c 6d ff ff ff    	jl     2b90 <read_weights+0x37>
    2c23:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    2c27:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2c2b:	8b 40 18             	mov    0x18(%rax),%eax
    2c2e:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    2c31:	0f 8c 4d ff ff ff    	jl     2b84 <read_weights+0x2b>
    2c37:	90                   	nop
    2c38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2c3c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2c43:	00 00 
    2c45:	74 05                	je     2c4c <read_weights+0xf3>
    2c47:	e8 94 f4 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2c4c:	c9                   	leave
    2c4d:	c3                   	ret

0000000000002c4e <print_graph>:
    2c4e:	55                   	push   %rbp
    2c4f:	48 89 e5             	mov    %rsp,%rbp
    2c52:	48 83 ec 20          	sub    $0x20,%rsp
    2c56:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2c5a:	48 8d 05 b9 13 00 00 	lea    0x13b9(%rip),%rax        # 401a <_IO_stdin_used+0x1a>
    2c61:	48 89 c7             	mov    %rax,%rdi
    2c64:	b8 00 00 00 00       	mov    $0x0,%eax
    2c69:	e8 c2 f3 ff ff       	call   2030 <printf@plt>
    2c6e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    2c75:	eb 1d                	jmp    2c94 <print_graph+0x46>
    2c77:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2c7a:	89 c6                	mov    %eax,%esi
    2c7c:	48 8d 05 9c 13 00 00 	lea    0x139c(%rip),%rax        # 401f <_IO_stdin_used+0x1f>
    2c83:	48 89 c7             	mov    %rax,%rdi
    2c86:	b8 00 00 00 00       	mov    $0x0,%eax
    2c8b:	e8 a0 f3 ff ff       	call   2030 <printf@plt>
    2c90:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    2c94:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2c98:	8b 40 18             	mov    0x18(%rax),%eax
    2c9b:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    2c9e:	7c d7                	jl     2c77 <print_graph+0x29>
    2ca0:	bf 0a 00 00 00       	mov    $0xa,%edi
    2ca5:	e8 d6 f3 ff ff       	call   2080 <putchar@plt>
    2caa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    2cb1:	eb 7d                	jmp    2d30 <print_graph+0xe2>
    2cb3:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2cb6:	89 c6                	mov    %eax,%esi
    2cb8:	48 8d 05 60 13 00 00 	lea    0x1360(%rip),%rax        # 401f <_IO_stdin_used+0x1f>
    2cbf:	48 89 c7             	mov    %rax,%rdi
    2cc2:	b8 00 00 00 00       	mov    $0x0,%eax
    2cc7:	e8 64 f3 ff ff       	call   2030 <printf@plt>
    2ccc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2cd3:	eb 41                	jmp    2d16 <print_graph+0xc8>
    2cd5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2cd9:	48 8b 40 20          	mov    0x20(%rax),%rax
    2cdd:	8b 55 f8             	mov    -0x8(%rbp),%edx
    2ce0:	48 63 d2             	movslq %edx,%rdx
    2ce3:	48 c1 e2 03          	shl    $0x3,%rdx
    2ce7:	48 01 d0             	add    %rdx,%rax
    2cea:	48 8b 00             	mov    (%rax),%rax
    2ced:	8b 55 fc             	mov    -0x4(%rbp),%edx
    2cf0:	48 63 d2             	movslq %edx,%rdx
    2cf3:	48 c1 e2 02          	shl    $0x2,%rdx
    2cf7:	48 01 d0             	add    %rdx,%rax
    2cfa:	8b 00                	mov    (%rax),%eax
    2cfc:	89 c6                	mov    %eax,%esi
    2cfe:	48 8d 05 1a 13 00 00 	lea    0x131a(%rip),%rax        # 401f <_IO_stdin_used+0x1f>
    2d05:	48 89 c7             	mov    %rax,%rdi
    2d08:	b8 00 00 00 00       	mov    $0x0,%eax
    2d0d:	e8 1e f3 ff ff       	call   2030 <printf@plt>
    2d12:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    2d16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2d1a:	8b 40 18             	mov    0x18(%rax),%eax
    2d1d:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    2d20:	7c b3                	jl     2cd5 <print_graph+0x87>
    2d22:	bf 0a 00 00 00       	mov    $0xa,%edi
    2d27:	e8 54 f3 ff ff       	call   2080 <putchar@plt>
    2d2c:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    2d30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2d34:	8b 40 18             	mov    0x18(%rax),%eax
    2d37:	39 45 f8             	cmp    %eax,-0x8(%rbp)
    2d3a:	0f 8c 73 ff ff ff    	jl     2cb3 <print_graph+0x65>
    2d40:	90                   	nop
    2d41:	90                   	nop
    2d42:	c9                   	leave
    2d43:	c3                   	ret

0000000000002d44 <add_edge>:
    2d44:	55                   	push   %rbp
    2d45:	48 89 e5             	mov    %rsp,%rbp
    2d48:	48 83 ec 30          	sub    $0x30,%rsp
    2d4c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2d50:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    2d53:	89 55 d0             	mov    %edx,-0x30(%rbp)
    2d56:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2d5d:	00 00 
    2d5f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2d63:	31 c0                	xor    %eax,%eax
    2d65:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2d68:	48 63 d0             	movslq %eax,%rdx
    2d6b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2d6f:	48 89 d6             	mov    %rdx,%rsi
    2d72:	48 89 c7             	mov    %rax,%rdi
    2d75:	e8 b7 06 00 00       	call   3431 <elem_at>
    2d7a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2d7e:	8b 45 d0             	mov    -0x30(%rbp),%eax
    2d81:	48 63 d0             	movslq %eax,%rdx
    2d84:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2d88:	48 89 d6             	mov    %rdx,%rsi
    2d8b:	48 89 c7             	mov    %rax,%rdi
    2d8e:	e8 9e 06 00 00       	call   3431 <elem_at>
    2d93:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2d97:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2d9b:	48 89 c2             	mov    %rax,%rdx
    2d9e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    2da2:	48 89 c6             	mov    %rax,%rsi
    2da5:	48 89 d7             	mov    %rdx,%rdi
    2da8:	e8 d1 05 00 00       	call   337e <append_to_vector>
    2dad:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2db1:	48 89 c2             	mov    %rax,%rdx
    2db4:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    2db8:	48 89 c6             	mov    %rax,%rsi
    2dbb:	48 89 d7             	mov    %rdx,%rdi
    2dbe:	e8 bb 05 00 00       	call   337e <append_to_vector>
    2dc3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2dc7:	8b 50 18             	mov    0x18(%rax),%edx
    2dca:	83 c2 01             	add    $0x1,%edx
    2dcd:	89 50 18             	mov    %edx,0x18(%rax)
    2dd0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2dd4:	8b 50 18             	mov    0x18(%rax),%edx
    2dd7:	83 c2 01             	add    $0x1,%edx
    2dda:	89 50 18             	mov    %edx,0x18(%rax)
    2ddd:	90                   	nop
    2dde:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2de2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2de9:	00 00 
    2deb:	74 05                	je     2df2 <add_edge+0xae>
    2ded:	e8 ee f2 ff ff       	call   20e0 <__stack_chk_fail@plt>
    2df2:	c9                   	leave
    2df3:	c3                   	ret

0000000000002df4 <free_graph>:
    2df4:	55                   	push   %rbp
    2df5:	48 89 e5             	mov    %rsp,%rbp
    2df8:	48 83 ec 20          	sub    $0x20,%rsp
    2dfc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2e00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e04:	48 8b 40 20          	mov    0x20(%rax),%rax
    2e08:	48 85 c0             	test   %rax,%rax
    2e0b:	74 49                	je     2e56 <free_graph+0x62>
    2e0d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2e14:	eb 24                	jmp    2e3a <free_graph+0x46>
    2e16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e1a:	48 8b 40 20          	mov    0x20(%rax),%rax
    2e1e:	8b 55 fc             	mov    -0x4(%rbp),%edx
    2e21:	48 63 d2             	movslq %edx,%rdx
    2e24:	48 c1 e2 03          	shl    $0x3,%rdx
    2e28:	48 01 d0             	add    %rdx,%rax
    2e2b:	48 8b 00             	mov    (%rax),%rax
    2e2e:	48 89 c7             	mov    %rax,%rdi
    2e31:	e8 7a f2 ff ff       	call   20b0 <free@plt>
    2e36:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    2e3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e3e:	8b 40 18             	mov    0x18(%rax),%eax
    2e41:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    2e44:	7c d0                	jl     2e16 <free_graph+0x22>
    2e46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e4a:	48 8b 40 20          	mov    0x20(%rax),%rax
    2e4e:	48 89 c7             	mov    %rax,%rdi
    2e51:	e8 5a f2 ff ff       	call   20b0 <free@plt>
    2e56:	90                   	nop
    2e57:	c9                   	leave
    2e58:	c3                   	ret

0000000000002e59 <is_connected>:
    2e59:	55                   	push   %rbp
    2e5a:	48 89 e5             	mov    %rsp,%rbp
    2e5d:	48 83 ec 50          	sub    $0x50,%rsp
    2e61:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2e65:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e6c:	00 00 
    2e6e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2e72:	31 c0                	xor    %eax,%eax
    2e74:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2e78:	8b 40 18             	mov    0x18(%rax),%eax
    2e7b:	48 98                	cltq
    2e7d:	be 04 00 00 00       	mov    $0x4,%esi
    2e82:	48 89 c7             	mov    %rax,%rdi
    2e85:	e8 76 f2 ff ff       	call   2100 <calloc@plt>
    2e8a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2e8e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2e92:	be 00 00 00 00       	mov    $0x0,%esi
    2e97:	48 89 c7             	mov    %rax,%rdi
    2e9a:	e8 92 05 00 00       	call   3431 <elem_at>
    2e9f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2ea3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2ea7:	8b 40 28             	mov    0x28(%rax),%eax
    2eaa:	48 98                	cltq
    2eac:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2eb3:	00 
    2eb4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2eb8:	48 01 d0             	add    %rdx,%rax
    2ebb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    2ec1:	bf 08 00 00 00       	mov    $0x8,%edi
    2ec6:	e8 80 04 00 00       	call   334b <new_vector>
    2ecb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2ecf:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    2ed3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2ed7:	48 89 d6             	mov    %rdx,%rsi
    2eda:	48 89 c7             	mov    %rax,%rdi
    2edd:	e8 9c 04 00 00       	call   337e <append_to_vector>
    2ee2:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    2ee9:	e9 a7 00 00 00       	jmp    2f95 <is_connected+0x13c>
    2eee:	8b 45 c0             	mov    -0x40(%rbp),%eax
    2ef1:	48 63 d0             	movslq %eax,%rdx
    2ef4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2ef8:	48 89 d6             	mov    %rdx,%rsi
    2efb:	48 89 c7             	mov    %rax,%rdi
    2efe:	e8 2e 05 00 00       	call   3431 <elem_at>
    2f03:	48 8b 00             	mov    (%rax),%rax
    2f06:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2f0a:	83 45 c0 01          	addl   $0x1,-0x40(%rbp)
    2f0e:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    2f15:	eb 72                	jmp    2f89 <is_connected+0x130>
    2f17:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2f1a:	48 63 d0             	movslq %eax,%rdx
    2f1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f21:	48 89 d6             	mov    %rdx,%rsi
    2f24:	48 89 c7             	mov    %rax,%rdi
    2f27:	e8 05 05 00 00       	call   3431 <elem_at>
    2f2c:	48 8b 00             	mov    (%rax),%rax
    2f2f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2f33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2f37:	8b 40 28             	mov    0x28(%rax),%eax
    2f3a:	48 98                	cltq
    2f3c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2f43:	00 
    2f44:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2f48:	48 01 d0             	add    %rdx,%rax
    2f4b:	8b 00                	mov    (%rax),%eax
    2f4d:	85 c0                	test   %eax,%eax
    2f4f:	7f 33                	jg     2f84 <is_connected+0x12b>
    2f51:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2f55:	8b 40 28             	mov    0x28(%rax),%eax
    2f58:	48 98                	cltq
    2f5a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2f61:	00 
    2f62:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2f66:	48 01 d0             	add    %rdx,%rax
    2f69:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    2f6f:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    2f73:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2f77:	48 89 d6             	mov    %rdx,%rsi
    2f7a:	48 89 c7             	mov    %rax,%rdi
    2f7d:	e8 fc 03 00 00       	call   337e <append_to_vector>
    2f82:	eb 01                	jmp    2f85 <is_connected+0x12c>
    2f84:	90                   	nop
    2f85:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    2f89:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f8d:	8b 40 18             	mov    0x18(%rax),%eax
    2f90:	39 45 c4             	cmp    %eax,-0x3c(%rbp)
    2f93:	7c 82                	jl     2f17 <is_connected+0xbe>
    2f95:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2f99:	8b 40 14             	mov    0x14(%rax),%eax
    2f9c:	39 45 c0             	cmp    %eax,-0x40(%rbp)
    2f9f:	0f 8c 49 ff ff ff    	jl     2eee <is_connected+0x95>
    2fa5:	c7 45 c8 01 00 00 00 	movl   $0x1,-0x38(%rbp)
    2fac:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    2fb3:	eb 25                	jmp    2fda <is_connected+0x181>
    2fb5:	8b 45 cc             	mov    -0x34(%rbp),%eax
    2fb8:	48 98                	cltq
    2fba:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2fc1:	00 
    2fc2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2fc6:	48 01 d0             	add    %rdx,%rax
    2fc9:	8b 00                	mov    (%rax),%eax
    2fcb:	85 c0                	test   %eax,%eax
    2fcd:	75 07                	jne    2fd6 <is_connected+0x17d>
    2fcf:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    2fd6:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    2fda:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2fde:	8b 40 18             	mov    0x18(%rax),%eax
    2fe1:	39 45 cc             	cmp    %eax,-0x34(%rbp)
    2fe4:	7c cf                	jl     2fb5 <is_connected+0x15c>
    2fe6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2fea:	48 89 c7             	mov    %rax,%rdi
    2fed:	e8 64 04 00 00       	call   3456 <free_vector>
    2ff2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2ff6:	48 89 c7             	mov    %rax,%rdi
    2ff9:	e8 b2 f0 ff ff       	call   20b0 <free@plt>
    2ffe:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3001:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3005:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    300c:	00 00 
    300e:	74 05                	je     3015 <is_connected+0x1bc>
    3010:	e8 cb f0 ff ff       	call   20e0 <__stack_chk_fail@plt>
    3015:	c9                   	leave
    3016:	c3                   	ret

0000000000003017 <generate_new_graph>:
    3017:	55                   	push   %rbp
    3018:	48 89 e5             	mov    %rsp,%rbp
    301b:	48 83 ec 30          	sub    $0x30,%rsp
    301f:	89 7d dc             	mov    %edi,-0x24(%rbp)
    3022:	89 75 d8             	mov    %esi,-0x28(%rbp)
    3025:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    302c:	00 00 
    302e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3032:	31 c0                	xor    %eax,%eax
    3034:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3037:	8b 45 dc             	mov    -0x24(%rbp),%eax
    303a:	89 d6                	mov    %edx,%esi
    303c:	89 c7                	mov    %eax,%edi
    303e:	e8 75 f9 ff ff       	call   29b8 <new_graph>
    3043:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3047:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    304e:	e9 0b 01 00 00       	jmp    315e <generate_new_graph+0x147>
    3053:	e8 d8 f0 ff ff       	call   2130 <rand@plt>
    3058:	99                   	cltd
    3059:	f7 7d dc             	idivl  -0x24(%rbp)
    305c:	89 d0                	mov    %edx,%eax
    305e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    3061:	e8 ca f0 ff ff       	call   2130 <rand@plt>
    3066:	99                   	cltd
    3067:	f7 7d dc             	idivl  -0x24(%rbp)
    306a:	89 d0                	mov    %edx,%eax
    306c:	89 45 e8             	mov    %eax,-0x18(%rbp)
    306f:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    3072:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3075:	39 c2                	cmp    %eax,%edx
    3077:	0f 84 dd 00 00 00    	je     315a <generate_new_graph+0x143>
    307d:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    3080:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3083:	39 c2                	cmp    %eax,%edx
    3085:	7e 13                	jle    309a <generate_new_graph+0x83>
    3087:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    308b:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
    308f:	48 89 d6             	mov    %rdx,%rsi
    3092:	48 89 c7             	mov    %rax,%rdi
    3095:	e8 47 01 00 00       	call   31e1 <swap>
    309a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    309e:	48 8b 40 20          	mov    0x20(%rax),%rax
    30a2:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    30a5:	48 63 d2             	movslq %edx,%rdx
    30a8:	48 c1 e2 03          	shl    $0x3,%rdx
    30ac:	48 01 d0             	add    %rdx,%rax
    30af:	48 8b 00             	mov    (%rax),%rax
    30b2:	8b 55 e8             	mov    -0x18(%rbp),%edx
    30b5:	48 63 d2             	movslq %edx,%rdx
    30b8:	48 c1 e2 02          	shl    $0x2,%rdx
    30bc:	48 01 d0             	add    %rdx,%rax
    30bf:	8b 00                	mov    (%rax),%eax
    30c1:	85 c0                	test   %eax,%eax
    30c3:	0f 85 94 00 00 00    	jne    315d <generate_new_graph+0x146>
    30c9:	e8 62 f0 ff ff       	call   2130 <rand@plt>
    30ce:	48 63 d0             	movslq %eax,%rdx
    30d1:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
    30d8:	48 c1 ea 20          	shr    $0x20,%rdx
    30dc:	c1 fa 05             	sar    $0x5,%edx
    30df:	89 c1                	mov    %eax,%ecx
    30e1:	c1 f9 1f             	sar    $0x1f,%ecx
    30e4:	29 ca                	sub    %ecx,%edx
    30e6:	6b ca 64             	imul   $0x64,%edx,%ecx
    30e9:	29 c8                	sub    %ecx,%eax
    30eb:	89 c2                	mov    %eax,%edx
    30ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    30f1:	48 8b 40 20          	mov    0x20(%rax),%rax
    30f5:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    30f8:	48 63 c9             	movslq %ecx,%rcx
    30fb:	48 c1 e1 03          	shl    $0x3,%rcx
    30ff:	48 01 c8             	add    %rcx,%rax
    3102:	48 8b 00             	mov    (%rax),%rax
    3105:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    3108:	48 63 c9             	movslq %ecx,%rcx
    310b:	48 c1 e1 02          	shl    $0x2,%rcx
    310f:	48 01 c8             	add    %rcx,%rax
    3112:	83 c2 01             	add    $0x1,%edx
    3115:	89 10                	mov    %edx,(%rax)
    3117:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    311b:	48 8b 52 20          	mov    0x20(%rdx),%rdx
    311f:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    3122:	48 63 c9             	movslq %ecx,%rcx
    3125:	48 c1 e1 03          	shl    $0x3,%rcx
    3129:	48 01 ca             	add    %rcx,%rdx
    312c:	48 8b 12             	mov    (%rdx),%rdx
    312f:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    3132:	48 63 c9             	movslq %ecx,%rcx
    3135:	48 c1 e1 02          	shl    $0x2,%rcx
    3139:	48 01 ca             	add    %rcx,%rdx
    313c:	8b 00                	mov    (%rax),%eax
    313e:	89 02                	mov    %eax,(%rdx)
    3140:	8b 55 e8             	mov    -0x18(%rbp),%edx
    3143:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    3146:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    314a:	89 ce                	mov    %ecx,%esi
    314c:	48 89 c7             	mov    %rax,%rdi
    314f:	e8 f0 fb ff ff       	call   2d44 <add_edge>
    3154:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    3158:	eb 04                	jmp    315e <generate_new_graph+0x147>
    315a:	90                   	nop
    315b:	eb 01                	jmp    315e <generate_new_graph+0x147>
    315d:	90                   	nop
    315e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3161:	3b 45 d8             	cmp    -0x28(%rbp),%eax
    3164:	0f 8c e9 fe ff ff    	jl     3053 <generate_new_graph+0x3c>
    316a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    316e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3172:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3179:	00 00 
    317b:	74 05                	je     3182 <generate_new_graph+0x16b>
    317d:	e8 5e ef ff ff       	call   20e0 <__stack_chk_fail@plt>
    3182:	c9                   	leave
    3183:	c3                   	ret

0000000000003184 <generate_new_connected_graph>:
    3184:	55                   	push   %rbp
    3185:	48 89 e5             	mov    %rsp,%rbp
    3188:	48 83 ec 20          	sub    $0x20,%rsp
    318c:	89 7d ec             	mov    %edi,-0x14(%rbp)
    318f:	89 75 e8             	mov    %esi,-0x18(%rbp)
    3192:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    3199:	00 
    319a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    31a1:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    31a5:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    31aa:	74 0c                	je     31b8 <generate_new_connected_graph+0x34>
    31ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31b0:	48 89 c7             	mov    %rax,%rdi
    31b3:	e8 3c fc ff ff       	call   2df4 <free_graph>
    31b8:	8b 55 e8             	mov    -0x18(%rbp),%edx
    31bb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    31be:	89 d6                	mov    %edx,%esi
    31c0:	89 c7                	mov    %eax,%edi
    31c2:	e8 50 fe ff ff       	call   3017 <generate_new_graph>
    31c7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    31cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31cf:	48 89 c7             	mov    %rax,%rdi
    31d2:	e8 82 fc ff ff       	call   2e59 <is_connected>
    31d7:	85 c0                	test   %eax,%eax
    31d9:	74 c6                	je     31a1 <generate_new_connected_graph+0x1d>
    31db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31df:	c9                   	leave
    31e0:	c3                   	ret

00000000000031e1 <swap>:
    31e1:	55                   	push   %rbp
    31e2:	48 89 e5             	mov    %rsp,%rbp
    31e5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    31e9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    31ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    31f1:	8b 00                	mov    (%rax),%eax
    31f3:	89 45 fc             	mov    %eax,-0x4(%rbp)
    31f6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    31fa:	8b 10                	mov    (%rax),%edx
    31fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3200:	89 10                	mov    %edx,(%rax)
    3202:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3206:	8b 55 fc             	mov    -0x4(%rbp),%edx
    3209:	89 10                	mov    %edx,(%rax)
    320b:	90                   	nop
    320c:	5d                   	pop    %rbp
    320d:	c3                   	ret

000000000000320e <input_through_argv>:
    320e:	55                   	push   %rbp
    320f:	48 89 e5             	mov    %rsp,%rbp
    3212:	48 83 ec 10          	sub    $0x10,%rsp
    3216:	89 7d fc             	mov    %edi,-0x4(%rbp)
    3219:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    321d:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
    3221:	7f 07                	jg     322a <input_through_argv+0x1c>
    3223:	b8 00 00 00 00       	mov    $0x0,%eax
    3228:	eb 33                	jmp    325d <input_through_argv+0x4f>
    322a:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
    322e:	75 28                	jne    3258 <input_through_argv+0x4a>
    3230:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3234:	48 83 c0 08          	add    $0x8,%rax
    3238:	48 8b 00             	mov    (%rax),%rax
    323b:	48 8d 15 e2 0d 00 00 	lea    0xde2(%rip),%rdx        # 4024 <_IO_stdin_used+0x24>
    3242:	48 89 d6             	mov    %rdx,%rsi
    3245:	48 89 c7             	mov    %rax,%rdi
    3248:	e8 a3 ee ff ff       	call   20f0 <strcmp@plt>
    324d:	85 c0                	test   %eax,%eax
    324f:	75 07                	jne    3258 <input_through_argv+0x4a>
    3251:	b8 02 00 00 00       	mov    $0x2,%eax
    3256:	eb 05                	jmp    325d <input_through_argv+0x4f>
    3258:	b8 00 00 00 00       	mov    $0x0,%eax
    325d:	c9                   	leave
    325e:	c3                   	ret

000000000000325f <begin_timer>:
    325f:	55                   	push   %rbp
    3260:	48 89 e5             	mov    %rsp,%rbp
    3263:	48 8d 05 56 2e 00 00 	lea    0x2e56(%rip),%rax        # 60c0 <start_time>
    326a:	48 89 c6             	mov    %rax,%rsi
    326d:	bf 01 00 00 00       	mov    $0x1,%edi
    3272:	e8 d9 ed ff ff       	call   2050 <clock_gettime@plt>
    3277:	90                   	nop
    3278:	5d                   	pop    %rbp
    3279:	c3                   	ret

000000000000327a <time_elapsed>:
    327a:	55                   	push   %rbp
    327b:	48 89 e5             	mov    %rsp,%rbp
    327e:	48 83 ec 30          	sub    $0x30,%rsp
    3282:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3289:	00 00 
    328b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    328f:	31 c0                	xor    %eax,%eax
    3291:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3295:	48 89 c6             	mov    %rax,%rsi
    3298:	bf 01 00 00 00       	mov    $0x1,%edi
    329d:	e8 ae ed ff ff       	call   2050 <clock_gettime@plt>
    32a2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    32a6:	48 8b 05 13 2e 00 00 	mov    0x2e13(%rip),%rax        # 60c0 <start_time>
    32ad:	48 29 c2             	sub    %rax,%rdx
    32b0:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    32b4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    32b8:	48 8b 05 09 2e 00 00 	mov    0x2e09(%rip),%rax        # 60c8 <start_time+0x8>
    32bf:	48 29 c2             	sub    %rax,%rdx
    32c2:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    32c6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    32ca:	48 69 d0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rdx
    32d1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    32d5:	48 01 d0             	add    %rdx,%rax
    32d8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    32dc:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    32e3:	00 00 
    32e5:	74 05                	je     32ec <time_elapsed+0x72>
    32e7:	e8 f4 ed ff ff       	call   20e0 <__stack_chk_fail@plt>
    32ec:	c9                   	leave
    32ed:	c3                   	ret

00000000000032ee <initialize_vector>:
    32ee:	55                   	push   %rbp
    32ef:	48 89 e5             	mov    %rsp,%rbp
    32f2:	48 83 ec 10          	sub    $0x10,%rsp
    32f6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    32fa:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    32fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3302:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3306:	48 89 50 08          	mov    %rdx,0x8(%rax)
    330a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    330e:	c7 40 10 10 00 00 00 	movl   $0x10,0x10(%rax)
    3315:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3319:	8b 40 10             	mov    0x10(%rax),%eax
    331c:	48 63 d0             	movslq %eax,%rdx
    331f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3323:	48 8b 40 08          	mov    0x8(%rax),%rax
    3327:	48 0f af c2          	imul   %rdx,%rax
    332b:	48 89 c7             	mov    %rax,%rdi
    332e:	e8 5d ed ff ff       	call   2090 <malloc@plt>
    3333:	48 89 c2             	mov    %rax,%rdx
    3336:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    333a:	48 89 10             	mov    %rdx,(%rax)
    333d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3341:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    3348:	90                   	nop
    3349:	c9                   	leave
    334a:	c3                   	ret

000000000000334b <new_vector>:
    334b:	55                   	push   %rbp
    334c:	48 89 e5             	mov    %rsp,%rbp
    334f:	48 83 ec 20          	sub    $0x20,%rsp
    3353:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3357:	bf 18 00 00 00       	mov    $0x18,%edi
    335c:	e8 2f ed ff ff       	call   2090 <malloc@plt>
    3361:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3365:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3369:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    336d:	48 89 d6             	mov    %rdx,%rsi
    3370:	48 89 c7             	mov    %rax,%rdi
    3373:	e8 76 ff ff ff       	call   32ee <initialize_vector>
    3378:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    337c:	c9                   	leave
    337d:	c3                   	ret

000000000000337e <append_to_vector>:
    337e:	55                   	push   %rbp
    337f:	48 89 e5             	mov    %rsp,%rbp
    3382:	48 83 ec 10          	sub    $0x10,%rsp
    3386:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    338a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    338e:	eb 40                	jmp    33d0 <append_to_vector+0x52>
    3390:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3394:	8b 40 10             	mov    0x10(%rax),%eax
    3397:	8d 14 00             	lea    (%rax,%rax,1),%edx
    339a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    339e:	89 50 10             	mov    %edx,0x10(%rax)
    33a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33a5:	8b 40 10             	mov    0x10(%rax),%eax
    33a8:	48 63 d0             	movslq %eax,%rdx
    33ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33af:	48 8b 40 08          	mov    0x8(%rax),%rax
    33b3:	48 0f af d0          	imul   %rax,%rdx
    33b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33bb:	48 8b 00             	mov    (%rax),%rax
    33be:	48 89 d6             	mov    %rdx,%rsi
    33c1:	48 89 c7             	mov    %rax,%rdi
    33c4:	e8 57 ed ff ff       	call   2120 <realloc@plt>
    33c9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    33cd:	48 89 02             	mov    %rax,(%rdx)
    33d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33d4:	8b 50 10             	mov    0x10(%rax),%edx
    33d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33db:	8b 40 14             	mov    0x14(%rax),%eax
    33de:	83 c0 01             	add    $0x1,%eax
    33e1:	39 c2                	cmp    %eax,%edx
    33e3:	7e ab                	jle    3390 <append_to_vector+0x12>
    33e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33e9:	48 8b 50 08          	mov    0x8(%rax),%rdx
    33ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33f1:	48 8b 30             	mov    (%rax),%rsi
    33f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33f8:	8b 40 14             	mov    0x14(%rax),%eax
    33fb:	48 63 c8             	movslq %eax,%rcx
    33fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3402:	48 8b 40 08          	mov    0x8(%rax),%rax
    3406:	48 0f af c1          	imul   %rcx,%rax
    340a:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
    340e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3412:	48 89 c6             	mov    %rax,%rsi
    3415:	48 89 cf             	mov    %rcx,%rdi
    3418:	e8 33 ed ff ff       	call   2150 <memcpy@plt>
    341d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3421:	8b 40 14             	mov    0x14(%rax),%eax
    3424:	8d 50 01             	lea    0x1(%rax),%edx
    3427:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    342b:	89 50 14             	mov    %edx,0x14(%rax)
    342e:	90                   	nop
    342f:	c9                   	leave
    3430:	c3                   	ret

0000000000003431 <elem_at>:
    3431:	55                   	push   %rbp
    3432:	48 89 e5             	mov    %rsp,%rbp
    3435:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3439:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    343d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3441:	48 8b 10             	mov    (%rax),%rdx
    3444:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3448:	48 8b 40 08          	mov    0x8(%rax),%rax
    344c:	48 0f af 45 f0       	imul   -0x10(%rbp),%rax
    3451:	48 01 d0             	add    %rdx,%rax
    3454:	5d                   	pop    %rbp
    3455:	c3                   	ret

0000000000003456 <free_vector>:
    3456:	55                   	push   %rbp
    3457:	48 89 e5             	mov    %rsp,%rbp
    345a:	48 83 ec 10          	sub    $0x10,%rsp
    345e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3462:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3466:	48 8b 00             	mov    (%rax),%rax
    3469:	48 89 c7             	mov    %rax,%rdi
    346c:	e8 3f ec ff ff       	call   20b0 <free@plt>
    3471:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3475:	48 89 c7             	mov    %rax,%rdi
    3478:	e8 33 ec ff ff       	call   20b0 <free@plt>
    347d:	90                   	nop
    347e:	c9                   	leave
    347f:	c3                   	ret

Disassembly of section .fini:

0000000000003480 <_fini>:
    3480:	f3 0f 1e fa          	endbr64
    3484:	48 83 ec 08          	sub    $0x8,%rsp
    3488:	48 83 c4 08          	add    $0x8,%rsp
    348c:	c3                   	ret
