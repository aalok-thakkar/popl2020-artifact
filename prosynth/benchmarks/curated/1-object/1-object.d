V: v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11.
H: h1,h2,h5,h9,h11.
F: f1,f2.
M: tgt1,tgt2,tgt3.
Z: z0.

*points_initial(V,H)
v1,h1
v2,h2
v5,h5
v9,h9
v11,h11
.
*store(V,F,V)
v5,f1,v1
v5,f2,v11
v1,f2,v5
v4,f1,v2
v5,f1,v2
.
*load(V,F,V)
v9,f1,v1
v5,f2,v8
v1,f2,v4
v9,f1,v4
.
*invocation(H,M)
h1,tgt1
h2,tgt2
h5,tgt1
h9,tgt3
h11,tgt1
.
*receiver_actual(M,V)
tgt1,v3
tgt2,v4
tgt3,v5
.
*receiver_formal(H,V)
h1,v2
h2,v10
h5,v3
h9,v4
h11,v6
.
*formal(M,Z,V)
tgt1,z0,v2
tgt2,z0,v3
tgt3,z0,v4
.
*actual(H,Z,V)
h1,z0,v8
h2,z0,v7
h5,z0,v4
h9,z0,v2
h11,z0,v1
.
*assign(V,V,V,V)
v3,v2,v2,v8
v3,v2,v3,v4
v3,v2,v6,v1
v4,v3,v10,v7
v5,v4,v4,v2
.
pointsto(V,V,H)
v3,v1,h1
v4,v2,h2
v3,v5,h5
v5,v9,h9
v3,v11,h11
v5,v4,h2
v3,v8,h11
v3,v4,h5
v3,v2,h5
.
heappointsto(H,F,H)
h5,f2,h11
h5,f1,h1
h1,f2,h5
h5,f1,h5
.
