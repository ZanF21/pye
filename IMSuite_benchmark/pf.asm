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
mov    [rbp-0x48],rax
mov    [rbp-0x5c],0x2
mov    [rbp-0x64],0x0
jmp
mov    eax,[rbp-0x64]
movsxd rdx,eax
mov    rax,[rbp-0x48]
mov    rsi,rdx
mov    rdi,rax
call   3431 <elem_at>
mov    [rbp-0x58],rax
mov    rax,[rbp-0x58]
mov    rax,[rax+0x20]
mov    [rbp-0x50],rax
mov    rax,[rbp-0x58]
prefetcht0 [rax]            <!-- -->
mov    rax,[rbp-0x50]
prefetcht0 [rax]            <!-- -->
mov    rax,[rbp-0x50]
mov    eax,[rax+0x4]
cmp    [rbp-0x7c],eax
jne
mov    rax,[rbp-0x50]
add    rax,0x3000
prefetcht0 [rax]            <!-- -->
mov    rax,[rbp-0x50]
add    rax,0x6000
prefetcht0 [rax]            <!-- -->
add    [rbp-0x64],0x1
mov    eax,[rbp-0x64]
cmp    eax,[rbp-0x5c]
jl
mov    eax,[rbp-0x5c]
mov    [rbp-0x18],eax
mov    rax,[rbp-0x48]
mov    [rbp-0x38],rax
mov    eax,[rbp-0x7c]
mov    [rbp-0x20],eax
mov    rax,[rbp-0x78]
mov    [rbp-0x40],rax
mov    rax,[rbp-0x58]
mov    [rbp-0x30],rax
mov    rax,[rbp-0x50]
mov    [rbp-0x28],rax
mov    eax,[rbp-0x60]
mov    [rbp-0x1c],eax
lea    rax,[rbp-0x40]
mov    ecx,0x0
mov    edx,0x0
mov    rsi,rax
lea    rax,[rip+0x00]
mov    rdi,rax
call   20c0 <GOMP_parallel@plt>
mov    rax,[rbp-0x30]
mov    [rbp-0x58],rax
mov    rax,[rbp-0x28]
mov    [rbp-0x50],rax
mov    eax,[rbp-0x1c]
mov    [rbp-0x60],eax
mov    eax,[rbp-0x60]
mov    rdx,[rbp-0x8]
sub    rdx,fs:0x28   
nop
je
call   20e0 <__stack_chk_fail@plt>
leave
ret