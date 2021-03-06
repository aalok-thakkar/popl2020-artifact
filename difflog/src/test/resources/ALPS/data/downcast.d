H: H1,H2,H3,H4.
M: 0,1,2,3,4,5,6.
T: T0,T2,T3,T4,T5,T36.
V: 0,1,2,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,38,39,40,41.

*reachableM(M)
0
4
2
6
1
5
3
.
*VH(V,H)
0,H4
0,H2
0,H1
0,H3
32,H3
16,H3
8,H2
40,H3
24,H2
36,H3
20,H4
12,H3
28,H3
2,H4
2,H2
34,H2
34,H1
34,H3
18,H2
18,H3
10,H2
26,H4
26,H2
6,H1
38,H3
22,H4
1,H3
33,H2
17,H2
17,H3
9,H2
41,H4
41,H2
41,H1
41,H3
25,H4
25,H2
5,H1
37,H3
21,H4
13,H3
29,H1
29,H3
35,H3
19,H2
19,H3
11,H3
27,H4
27,H2
7,H1
39,H3
23,H4
15,H2
.
*HT(H,T)
H4,T4
H2,T4
H1,T2
H3,T3
.
*McheckCastInst(M,V,T,V)
4,18,T2,17
4,26,T4,25
4,30,T4,29
4,35,T3,34
4,39,T3,38
.
reachableCast(T,V)
T3,34
T3,38
T2,17
T4,25
T4,29
.
ptsVT(V,T)
0,T4
0,T2
0,T3
32,T3
16,T3
8,T4
40,T3
24,T4
36,T3
20,T4
12,T3
28,T3
2,T4
34,T4
34,T2
34,T3
18,T4
18,T3
10,T4
26,T4
6,T2
38,T3
22,T4
1,T3
33,T4
17,T4
17,T3
9,T4
41,T4
41,T2
41,T3
25,T4
5,T2
37,T3
21,T4
13,T3
29,T2
29,T3
35,T3
19,T4
19,T3
11,T3
27,T4
7,T2
39,T3
23,T4
15,T4
.
unsafeDowncast(V,T)
34,T3
29,T4
.
*notSub(T,T)
T0,T0
T2,T0
T2,T3
T2,T4
T2,T5
T3,T0
T3,T4
T3,T5
T4,T0
T4,T3
T4,T5
T5,T0
T5,T2
T5,T3
T5,T4
T36,T0
T36,T2
T36,T3
T36,T4
T36,T5
.
badCast(V,T)
0,T0
34,T0
6,T0
41,T0
5,T0
29,T0
7,T0
0,T3
34,T3
6,T3
41,T3
5,T3
29,T3
7,T3
0,T4
34,T4
6,T4
41,T4
5,T4
29,T4
7,T4
0,T5
34,T5
6,T5
41,T5
5,T5
29,T5
7,T5
32,T0
16,T0
40,T0
36,T0
12,T0
28,T0
18,T0
38,T0
1,T0
17,T0
37,T0
13,T0
35,T0
19,T0
11,T0
39,T0
32,T4
16,T4
40,T4
36,T4
12,T4
28,T4
18,T4
38,T4
1,T4
17,T4
37,T4
13,T4
35,T4
19,T4
11,T4
39,T4
32,T5
16,T5
40,T5
36,T5
12,T5
28,T5
18,T5
38,T5
1,T5
17,T5
37,T5
13,T5
35,T5
19,T5
11,T5
39,T5
8,T0
24,T0
20,T0
2,T0
10,T0
26,T0
22,T0
33,T0
9,T0
25,T0
21,T0
27,T0
23,T0
15,T0
8,T3
24,T3
20,T3
2,T3
18,T3
10,T3
26,T3
22,T3
33,T3
17,T3
9,T3
25,T3
21,T3
19,T3
27,T3
23,T3
15,T3
8,T5
24,T5
20,T5
2,T5
10,T5
26,T5
22,T5
33,T5
9,T5
25,T5
21,T5
27,T5
23,T5
15,T5
.
