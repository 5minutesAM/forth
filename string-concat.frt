( str1addr str2addr -- str1addr str2addr resStrAddr ) 
: cat
2dup over count dup >r ( save 1-st string length) 
over count 1 + + ( calculate result string length) 
heap-alloc >r ( save result string address) 
swap r@ swap string-copy ( copy first string) 
r> r> swap dup >r + ( calculate where to copy second string) 
swap string-copy r> ( copy second string | return address of the result string) ; 

