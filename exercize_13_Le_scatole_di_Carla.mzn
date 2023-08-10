int: small_box = 10;
int: big_box = 20;

var int: n_pour;

constraint n_pour = pow(big_box, 3) / pow(small_box, 3);

solve satisfy;