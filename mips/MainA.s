		.text
main:	li	$t0, 4				#int a=4;
		li	$t1, 3				#int b=3;
		add	$t2, $t0, $t1		#int c=a+b;
		sub	$t3, $t0, $t1		#int d=a-b;
		add	$t2, $t3, $t0		#int c=d+a;
		li	$t1, 1;				#int b=(int)!false; //int b=1;
#verify: li	$v0, 1
#		la	$a0, ($t0)
#		syscall					#prints 4
#		li	$v0, 1
#		la	$a0, ($t1)
#		syscall					#prints 1
#		li	$v0, 1
#		la	$a0, ($t2)
#		syscall					#prints 5
#		li	$v0, 1
#		la	$a0, ($t3)
#		syscall					#prints 1
exit:	li	$v0, 10
		syscall