int: n_cuts = 7;
int: vertex_init = 10;

array[1..vertex_init] of var int: face_cuts;
array[1..vertex_init] of var int: vertex_cuts;

constraint forall(i in 1..vertex_init)(if i==1 
                                       then face_cuts[i] = n_cuts + 1 
                                       else face_cuts[i] = face_cuts[i-1] + 1
                                       endif);

constraint forall(i in 1..vertex_init)(if i==1 
                                       then vertex_cuts[i] = vertex_init + 2 
                                       else vertex_cuts[i] = vertex_cuts[i-1] + 2
                                       endif);

solve satisfy;