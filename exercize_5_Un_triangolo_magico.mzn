include "globals.mzn";
array[1..9] of var 1..9: triangle;

constraint triangle[1] == 1;
constraint triangle[2] == 8;
constraint triangle[4] == 5;
constraint triangle[6] == 4;
constraint triangle[9] == 7;

constraint triangle[1] + triangle[2] + triangle[3] + triangle[4] == 20;
constraint triangle[4] + triangle[5] + triangle[6] + triangle[7] == 20;
constraint triangle[7] + triangle[8] + triangle[9] + triangle[1] == 20;

constraint all_different(triangle);

solve satisfy;

output ["In the left corner Debora writes the number: \(triangle[7]).\n"];