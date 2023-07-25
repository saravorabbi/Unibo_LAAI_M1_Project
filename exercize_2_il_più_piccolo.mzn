include "globals.mzn";

array[1..4] of var 0..9: number;

%cifre tutte pari
constraint forall(i in 1..4)((number[i] mod 2) == 0);

%primo numero no 0
constraint number[1] != 0;

%cifre tutte diverse
constraint all_different(number);

%numero multiplo di 11
constraint ((number[1]*1000 + number[2]*100 + number[3]*10 + number[4]) mod 11) == 0;

solve minimize (number[1]*1000 + number[2]*100 + number[3]*10 + number[4]);