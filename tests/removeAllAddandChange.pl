application(toyApp, [s3,s4]).
service(s3, [], 8, []).
service(s4, [], 3, []).
s2s(s3, s4, 25, 12).
s2s(s4, s3, 30, 5).

deployment(toyApp, [on(s2, n2), on(s1, n1)], ([(n2, 6), (n1, 6)],[(n1, n2, 10), (n2, n1, 10)])).

node(n1,[], 4,[]).
node(n2,[], 4,[]).
node(n3,[], 10,[]).
link(n1,n2,20,40).
link(n2,n1,20,40).
link(n1,n3,20,50).
link(n3,n1,20,50).
link(n2,n3,20,50).
link(n3,n2,20,50).
