anon([], X, X).
anon(X, [], X).
anon([H|T], [A|B], [A|X]):- A@<H, anon([H|T], B, X).
anon([H|T], [A|B], [H|X]):- H@<A, anon(T,[A|B], X).

anon([a,b,d], [c,e], R).