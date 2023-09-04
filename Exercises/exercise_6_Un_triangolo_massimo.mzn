include "globals.mzn";
array[1..9] of var 1..9: triangle;
var int: sum1;
var int: sum2;
var int: sum3;
var int: sum;

constraint triangle[1] + triangle[2] + triangle[3] + triangle[4] == sum1;
constraint triangle[4] + triangle[5] + triangle[6] + triangle[7] == sum2;
constraint triangle[7] + triangle[8] + triangle[9] + triangle[1] == sum3;

constraint all_different(triangle);

constraint sum = sum1 + sum2 + sum3;

solve maximize sum1 + sum2 + sum3;