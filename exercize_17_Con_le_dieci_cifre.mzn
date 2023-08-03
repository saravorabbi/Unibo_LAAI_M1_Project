include "globals.mzn";

var int: n;
var int: n3;
var int: n4;

array[1..9] of var 0..9: n3_array;
array[1..9] of var 0..9: n4_array;

constraint n3 = sum(i in 1..9)(10^(9 - i) * n3_array[i]);
constraint n4 = sum(i in 1..9)(10^(9 - i) * n4_array[i]);

constraint n3 = pow(n, 3);
constraint n4 = pow(n, 4);

constraint alldifferent_except_0(n3_array ++ n4_array);
constraint forall(i in 1..9)(exists(j in 1..9)(n3_array[j] = i \/ n4_array[j] = i));

solve satisfy;