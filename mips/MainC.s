		.data
A:		.word 11, 6, 4			#int[] A={11,6,4};
		.text
main:	la 	$t0, A
		lw 	$t1, 4($t0)			#int a=A[1];
		lw 	$t2, ($t0)			#int b=A[0];
		and	$t3, $t1, $t2		#int c=a & b;
		sw	$t3, 8($t0)			#A[2]=c;
#verify:li	$v0, 1
#		la	$a0, ($t1)
#		syscall					#prints 6
#		li	$v0, 1
#		la	$a0, ($t2)
#		syscall					#prints 11
#		li	$v0, 1
#		la	$a0, ($t3)
#		syscall					#prints 2
exit:	li	$v0, 10
		syscall