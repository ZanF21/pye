<broadcast_start>:
push   rbp
mov    rbp,rsp
add    rsp,0x00
mov    [rbp-0x00],rdi
mov    [rbp-0x00],esi
mov    rax,fs:0x28
nop
mov    [rbp-0x8],rax
xor    eax,eax
mov    [rbp-0x00],0x1
mov    rax,[rbp-0x00]
mov    [rbp-0x18],eax
mov    rax,[rbp-0x38]
mov    [rbp-0x20],rax
mov    eax,[rbp-0x24]
mov    [rbp-0x14],eax
lea    rax,[rbp-0x20]
mov    ecx,0x0
mov    edx,0x0
mov    rsi,rax
lea    rax,[rip+0x000]
mov    rdi,rax
call   20c0 <GOMP_parallel@plt>
mov    eax,[rbp-0x14]
mov    [rbp-0x24],eax
mov    eax,[rbp-0x24]
mov    rdx,[rbp-0x8]
sub    rdx,fs:0x28
nop 
je
call   20e0 <__stack_chk_fail@plt>
leave
ret