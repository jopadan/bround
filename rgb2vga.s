	.file	"rgb2vga.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\033[48;5:%hhum %03hhu \033[0m"
.LC1:
	.string	" "
.LC2:
	.string	"%22s"
.LC3:
	.string	" vga "
.LC4:
	.string	" rgb "
.LC5:
	.string	" shr "
.LC6:
	.string	"\033[48;5:%hhum %03hhu \033[0m "
.LC10:
	.string	"\033[48;5:%hhum %03hhu \033[0m\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB47:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %ebx
	call	__printf_chk@PLT
	cmpl	$8, %ebx
	jne	.L2
	leaq	.LC1(%rip), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rsi
	movl	$232, %r12d
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%r12d, %ecx
	movl	%r12d, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %r12d
	call	__printf_chk@PLT
	cmpl	$238, %r12d
	jne	.L3
	movl	$32, %edi
	movl	$244, %ebp
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%ebp, %ecx
	movl	%ebp, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %ebp
	call	__printf_chk@PLT
	cmpl	$250, %ebp
	jne	.L4
	movl	$10, %edi
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %ebx
	call	__printf_chk@PLT
	cmpl	$16, %ebx
	jne	.L5
	leaq	.LC1(%rip), %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rsi
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%r12d, %ecx
	movl	%r12d, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %r12d
	call	__printf_chk@PLT
	cmpl	$244, %r12d
	jne	.L6
	movl	$32, %edi
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%ebp, %ecx
	movl	%ebp, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %ebp
	call	__printf_chk@PLT
	cmpl	$256, %ebp
	jne	.L7
	movl	$10, %edi
	movl	$-24, %r13d
	call	putchar@PLT
	movl	$10, %edi
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L8:
	leal	40(%r13), %ebp
	.p2align 4,,10
	.p2align 3
.L12:
	movzbl	%bpl, %ebx
	leal	6(%rbx), %r12d
	.p2align 4,,10
	.p2align 3
.L9:
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addl	$1, %ebx
	call	__printf_chk@PLT
	cmpl	%ebx, %r12d
	jne	.L9
	movl	$32, %edi
	addl	$36, %ebp
	call	putchar@PLT
	cmpb	%bpl, %r13b
	jne	.L12
	movl	$10, %edi
	addl	$6, %r13d
	call	putchar@PLT
	cmpb	$12, %r13b
	jne	.L8
	movl	$10, %edi
	xorl	%ebx, %ebx
	call	putchar@PLT
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$32, %edi
	call	putchar@PLT
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$32, %edi
	call	putchar@PLT
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$10, %edi
	call	putchar@PLT
	.p2align 4,,10
	.p2align 3
.L13:
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$1, %edi
	leaq	.LC6(%rip), %rsi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssl	%ebx, %xmm1, %xmm0
	movl	$1, %edi
	vmulss	.LC7(%rip), %xmm0, %xmm0
	vdivss	.LC8(%rip), %xmm0, %xmm0
	xorl	%eax, %eax
	vaddss	.LC9(%rip), %xmm0, %xmm2
	leaq	.LC6(%rip), %rsi
	vmovd	%xmm2, %edx
	movzbl	%dl, %edx
	movl	%edx, %ecx
	call	__printf_chk@PLT
	leal	0(,%rbx,4), %eax
	movl	$1, %edi
	addl	$1, %ebx
	leaq	.LC10(%rip), %rsi
	movl	%eax, %edx
	shrb	$6, %dl
	orl	%eax, %edx
	xorl	%eax, %eax
	movzbl	%dl, %edx
	movl	%edx, %ecx
	call	__printf_chk@PLT
	cmpl	$64, %ebx
	jne	.L13
	movl	$10, %edi
	call	putchar@PLT
	xorl	%edi, %edi
	call	exit@PLT
	.cfi_endproc
.LFE47:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC7:
	.long	1132396544
	.align 4
.LC8:
	.long	1115422720
	.align 4
.LC9:
	.long	1262485504
	.ident	"GCC: (Gentoo 15.1.1_p20250621 p1) 15.1.1 20250621"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
