( x -- x/-x ) 
: abs dup 0 < if -1 * then ; 
( x -- 1/0 ) 
: even 2 % abs not ;

( x -- x^2 )
: sqr dup * ;

( Primality test)
( x -- 1/0 )
: isprime
dup 1 > if
  dup 2 = not if 
    dup even not if ( if x>2 && x%2!=0)
        1 
        repeat ( i=3; [x > i^2] && [x % i != 0]; i+=2 ) 
            2 + 
            2dup sqr < 
            if ( x > i^2)
                2drop 1 exit 
            then
            2dup  % not 
            if ( x % i != 0)
                2drop 0 exit 
            then 0 
        until
    else drop 0 then
  else drop 1 then
else drop 0 then ;

( Primality test that returns address to the result)
( x -- addr )
: isprime-allot prime 1 allot dup -rot ! ;

