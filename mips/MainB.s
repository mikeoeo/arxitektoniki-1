		.text
main:	li 	$t1, 5				#int num1=7;
		li 	$t2, 7				#int num2=5; 
		sub $t3, $t2, $t1		#int diafora=num2-num1; 
		bge $t3, 0, geq			#if (diafora>=0) goto geq
		la 	$s0, ($t1)			#greater=num1;
		b	exit				#break; if we uncomment verify we must replace the label exit with verify
geq:	la 	$s0, ($t2)			#greater=num2;
#verify:li	$v0, 1
#		la	$a0, ($t3)
#		syscall					#prints 2
#		li	$v0, 1
#		la	$a0, ($s0)
#		syscall					#prints 7
exit:	li	$v0, 10
		syscall	
