% Define variables

array[1..4] of var 0..9: year;
var int: current_year;
var int: sum;
var int: age;

int: matt_birth_year = 2000;

constraint current_year = year[1]*1000 + year[2]*100 + year[3]*10 + year[4];  %2020
constraint age == current_year - 2000;
constraint sum = sum(year);
constraint sum = age / 5;

solve satisfy;

%output ["Matthew will be \(age) years old in the year \(year).\n"];