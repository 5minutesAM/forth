( x -- radical )
: radical
1 1 >r
  repeat
    1 + 
    2dup % not  
    if
      repeat 
        2dup / 
        -rot swap drop 
        2dup  %         
      until 
      dup r> * >r
    then
    over 1 =
  until 
2drop r> ;

