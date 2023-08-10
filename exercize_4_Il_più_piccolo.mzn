include "globals.mzn";

array[1..4] of var 0..9: number;

% all even digits
constraint forall(i in 1..4)((number[i] mod 2) == 0);

% first digit != 0
constraint number[1] != 0;

% digits all different
constraint all_different(number);

% number is a multiple of 11
constraint ((number[1]*1000 + number[2]*100 + number[3]*10 + number[4]) mod 11) == 0;

solve minimize (number[1]*1000 + number[2]*100 + number[3]*10 + number[4]);