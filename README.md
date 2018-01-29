# MIPS-Arrays

Instructions

Transform the following code into MIPS instructions. Your programs should run correctly on the QtSPIM simulator. 


Problem Statement

We have an array A which has 12 positivenumbers.All numbers are unique numbers (no duplicates). The allowed numbers are in the range 1to 100 (0 is excluded). Find the index of the largest value in the array and print both the index and the largest number.

Your assembly implementation should exactly followthe pseudo code sequencegiven below. Please do not perform any optimization at pseudo code level or at assembly level. 

Inputs: A[12] = {89, 19, 91, 23, 31, 96, 3, 67, 17, 11,43, 75}

We will also test your code using other possible values in the A array.The array A will always have 12 unique positive numbersin the range 1to 100 (0 is excluded). Please test your MIPS assembly with other possible values in A.


Outputs (with expected values for the above input)

Index of the largest number: 5The largest number: 96

Tips:For printing to/reading from console, you should first load correctvalue to register $v0, and then call “syscall” method. If there is an input, the value would be returned in $v0.

Pseudo-code:

int A[12] = {89, 19, 91, 23, 31, 96, 3, 67, 17, 11, 43, 75};

int max = 0;

int maxIndex = 0;

int i=0;

/*find the index of the largest number in the array*/

for (i = 0; i < 12; i++){ 

   if( A[i] >max) 
  
    {max= A[i];
    
    maxIndex = i;
    
    }
    
 }
    
 printf("Index of the largestnumber: %d\n", maxIndex);
    
 printf("The largestnumber: %d\n", max);
