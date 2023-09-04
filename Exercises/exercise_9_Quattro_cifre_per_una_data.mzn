include "globals.mzn";

array [1..8] of var 0..9: date;
var int: date_n;
int: date_prev = 2021*365 + 9*31 + 19;

%constraint wrt old date 19.09.2021
% days
constraint date[1] <= 3;
constraint date[1] == 3 -> (date[2] == 0 \/ date[2] == 1);

% month
constraint date[3] <= 1;
constraint date[3] == 1 -> (date[4] == 0 \/ date[4] == 1 \/ date[4] == 2);

% year
constraint date[5] >= 2;
constraint (date[5] == 2 /\ date[6] == 0) -> (date[7] >= 2);
constraint (date[5] == 2 /\ date[6] == 0 /\ date[7] == 2) -> date[8] > 1;

%constraint for the same value 2 times
constraint forall(i in 1..8)(count(date, date[i], 2));
%constraint nvalue(4, date);

constraint date_n = (date[5]*1000 + date[6]*100 + date[7]*10 + date[8])*365 + (date[3]*10 + date[4])*30 + (date[1]*10 + date[2]);

constraint date_n > date_prev;

solve minimize  date_n;