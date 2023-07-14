int: cards = 52;
int: sub_deck_1 = 25;
int: sub_deck_2 = 27;
int: red_1 = 12;

var int: red_2;
var int: black_1;
var int: black_2;

constraint red_1 + red_2 = 26;
constraint black_1 + black_2 = 26;
constraint red_1 + black_1 = sub_deck_1;
constraint red_2 + black_2 = sub_deck_2;

solve satisfy;