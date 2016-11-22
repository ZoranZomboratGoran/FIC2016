	.file	"main4.c"
	.text
	.globl	absdiff2
	.type	absdiff2, @function
absdiff2:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%ecx, %ebx
	subl	%edx, %ebx
	cmpl	%edx, %ecx
	cmovge	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff2, .-absdiff2
	.globl	cmovdiff
	.type	cmovdiff, @function
cmovdiff:
.LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%ecx, %ebx
	subl	%edx, %ebx
	cmpl	%edx, %ecx
	cmovg	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	cmovdiff, .-cmovdiff
	.globl	absdiff3
	.type	absdiff3, @function
absdiff3:
.LFB2:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	cmpl	%edx, %eax
	jge	.L10
	movl	$10, lcount
	subl	%eax, %edx
	movl	%edx, %eax
	ret
.L10:
	movl	$20, lcount
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	absdiff3, .-absdiff3
	.globl	lcount
	.bss
	.align 4
	.type	lcount, @object
	.size	lcount, 4
lcount:
	.zero	4
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
