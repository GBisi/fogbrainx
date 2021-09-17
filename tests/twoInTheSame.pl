application(toyApp, [s1,s2,s3]).
service(s1, [], 5, []).
service(s2, [], 6, []).
service(s3, [], 3, []).
s2s(s1, s2, 20, 8).
s2s(s2, s1, 20, 10).
s2s(s3, s2, 20, 10).
s2s(s2, s3, 20, 10).

deployment(toyApp, [on(s2, n2), on(s1, n1)], ([(n2, 6), (n1, 6)],[(n1, n2, 10), (n2, n1, 10)])).

node(n1,[], 4,[]).
node(n2,[], 4,[]).
link(n1,n2,20,40).
link(n2,n1,20,40).
