array[1..4] of var 0..9: number;
var int: n;

constraint number[1] != 0;

constraint (number[2] == 0 /\ number[3] != 0 /\ number[4] != 0) \/
           (number[2] != 0 /\ number[3] == 0 /\ number[4] != 0) \/
           (number[2] != 0 /\ number[3] != 0 /\ number[4] == 0);

constraint n = number[1]*1000 + number[2]*100 + number[3]*10 + number[4];

constraint (number[2] == 0 /\ ((number[1]*100 + number[3]*10 + number[4]) == n/9 )) \/
           (number[3] == 0 /\ ((number[1]*100 + number[2]*10 + number[4]) == n/9 )) \/
           (number[4] == 0 /\ ((number[1]*100 + number[2]*10 + number[3]) == n/9 ));

solve minimize n;