.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19242, %rbp
nop
cmp $43736, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x13c02, %rdi
nop
nop
nop
nop
nop
add $27682, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
and %r9, %r9
lea addresses_UC_ht+0x2d72, %rsi
lea addresses_UC_ht+0xc602, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_PSE+0x1ae02, %r8
nop
add %rbx, %rbx
mov (%r8), %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/