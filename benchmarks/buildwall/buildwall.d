B: b1,b2,b3,b4,b5,b6,b7,b11,b12.
D: d1,d2,d3,d4,d5,d6,d7,d8,d9,d11,d12,d13,d14,d15.

*cont(D)
d12
d13
d2
d3
d6
d7
.
*offset(D)
d2
d6
d12
d15
d8
.
*fetch(D,B)
d11,b11
d11,b12
d3,b3
d1,b1
d1,b2
d3,b4
d3,b5
d3,b6
d8,b7
.
*putOn(B,D)
b1,d2
b1,d3
b1,d4
b11,d12
b11,d13
b11,d14
b3,d6
b4,d7
b5,d8
b6,d9
.
inv(D,D)
.
buildWall(D,D)
d1,d2
d3,d6
d1,d6
d11,d12
.
