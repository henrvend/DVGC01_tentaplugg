insert([], It, [It]).
insert([H|T], It, [It, H|T]) :- H @< It.
insert([H|T], It, [H|NewT]) :- H @> It, insert(T, It, NewT).

insert([2], 1, R).

print_all([]).
print_all([H|T]) :- write(H), print_all(T).


ufind([Element|_], Element).
ufind([_|Tail], Element) :- ufind(Tail, Element).


test([], V) :- write(V), write(" is not in list").
test([V|_], V) :- write(V), write(" is in list").
test([H|T], V) :- test(T, V).



len([], 0).
len([_|T], L) :- len(T, TL), L is 1 + TL.