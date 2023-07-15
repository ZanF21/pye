
compile_check:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc1]        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <__stack_chk_fail@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <__stack_chk_fail@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4000 <__stack_chk_fail@GLIBC_2.4>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001040 <main>:
    1040:	48 83 ec 18          	sub    rsp,0x18
    1044:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    104b:	00 00 
    104d:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    1052:	31 c0                	xor    eax,eax
    1054:	48 8d 44 24 04       	lea    rax,[rsp+0x4]
    1059:	0f 18 00             	prefetchnta BYTE PTR [rax]
    105c:	0f 18 00             	prefetchnta BYTE PTR [rax]
    105f:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    1064:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    106b:	00 00 
    106d:	75 07                	jne    1076 <main+0x36>
    106f:	31 c0                	xor    eax,eax
    1071:	48 83 c4 18          	add    rsp,0x18
    1075:	c3                   	ret
    1076:	e8 b5 ff ff ff       	call   1030 <__stack_chk_fail@plt>
    107b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	31 ed                	xor    ebp,ebp
    1086:	49 89 d1             	mov    r9,rdx
    1089:	5e                   	pop    rsi
    108a:	48 89 e2             	mov    rdx,rsp
    108d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1091:	50                   	push   rax
    1092:	54                   	push   rsp
    1093:	45 31 c0             	xor    r8d,r8d
    1096:	31 c9                	xor    ecx,ecx
    1098:	48 8d 3d a1 ff ff ff 	lea    rdi,[rip+0xffffffffffffffa1]        # 1040 <main>
    109f:	ff 15 1b 2f 00 00    	call   QWORD PTR [rip+0x2f1b]        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt
    10a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10ad:	00 00 00 
    10b0:	48 8d 3d 61 2f 00 00 	lea    rdi,[rip+0x2f61]        # 4018 <__TMC_END__>
    10b7:	48 8d 05 5a 2f 00 00 	lea    rax,[rip+0x2f5a]        # 4018 <__TMC_END__>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <_start+0x58>
    10c3:	48 8b 05 fe 2e 00 00 	mov    rax,QWORD PTR [rip+0x2efe]        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <_start+0x58>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10e0:	48 8d 3d 31 2f 00 00 	lea    rdi,[rip+0x2f31]        # 4018 <__TMC_END__>
    10e7:	48 8d 35 2a 2f 00 00 	lea    rsi,[rip+0x2f2a]        # 4018 <__TMC_END__>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 89 f0             	mov    rax,rsi
    10f4:	48 c1 ee 3f          	shr    rsi,0x3f
    10f8:	48 c1 f8 03          	sar    rax,0x3
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <_start+0x98>
    1104:	48 8b 05 cd 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ecd]        # 3fd8 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <_start+0x98>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d ed 2e 00 00 00 	cmp    BYTE PTR [rip+0x2eed],0x0        # 4018 <__TMC_END__>
    112b:	75 33                	jne    1160 <_start+0xe0>
    112d:	55                   	push   rbp
    112e:	48 83 3d aa 2e 00 00 	cmp    QWORD PTR [rip+0x2eaa],0x0        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	74 0d                	je     1148 <_start+0xc8>
    113b:	48 8b 3d ce 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ece]        # 4010 <__dso_handle>
    1142:	ff 15 98 2e 00 00    	call   QWORD PTR [rip+0x2e98]        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	call   10b0 <_start+0x30>
    114d:	c6 05 c4 2e 00 00 01 	mov    BYTE PTR [rip+0x2ec4],0x1        # 4018 <__TMC_END__>
    1154:	5d                   	pop    rbp
    1155:	c3                   	ret
    1156:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    115d:	00 00 00 
    1160:	c3                   	ret
    1161:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1170:	f3 0f 1e fa          	endbr64
    1174:	e9 67 ff ff ff       	jmp    10e0 <_start+0x60>

Disassembly of section .fini:

000000000000117c <_fini>:
    117c:	f3 0f 1e fa          	endbr64
    1180:	48 83 ec 08          	sub    rsp,0x8
    1184:	48 83 c4 08          	add    rsp,0x8
    1188:	c3                   	ret
