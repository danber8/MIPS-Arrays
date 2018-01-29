#Daniel Bertak	
#UFID 1721-1967
#Introduction to Computer Organization
#9/21/17


.data 

array: 		.word 89, 19, 91, 26, 31, 96, 3, 67, 17, 11, 43, 75 	#This is the array


iterator: 	.word 0		#The iterator will start at 0		
size: 		.word 12	#This is the size of the array

maxvalue: 	.asciiz "The largest number:  "
iteratorsize:	.asciiz "The index of the largest number: "
newline:	.asciiz "\n"

.text

main:
	la $s0, array		#s0 now contains the address of the array
	lw $s6, iterator	#s6 now equals the iterator
	lw $s7, size		#s7 now equals the size
	
	lw $s1, 0($s0)		#The firrst value of the array is set as the max to start off 
	
loop:
	beq $s6, $s7, Exit	#for(int i = 0; i < array.size (12); i++), otherwise 
	lw $t0, 0($s0)		#t0 becomes s0
	addi $s6, $s6, 1	#s6 (the iterator gets i++)
	addi $s0, $s0, 4	#advance s0 (the array) by 4 bytes
	
	slt $t1, $t0, $s1	#t1 = 1 if (t0<s1), t1 = 0 if(t0>s1)

	bne $t1, $zero, loop	#if t==0, store the highest value and the size of the array 
	
	move $s1, $t0		#the highest value is now stored 
	move $s5, $s6		#The iterator is now stored
	addi $s5,$s5, -1	#subtract 1 to get the correct size
	j loop 



Exit:
	li $v0,4
	la $a0, iteratorsize	#print strings and values to console
	syscall
	
	li $v0,1
	move $a0, $s5
	syscall
	
	li $v0,4
	la $a0, newline
	syscall

	li $v0,4
	la $a0, maxvalue
	syscall
	
	li $v0,1
	move $a0, $s1
	syscall

	li $v0, 10
	syscall





	
