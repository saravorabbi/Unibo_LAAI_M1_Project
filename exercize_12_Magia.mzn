var 0..9: n1;
var 0..9: n2;
var int: n;
var int: f;

constraint n = n1*10 + n2;

constraint f = n2*10 + n1;

constraint f = ((n*4) - 3);

solve satisfy;