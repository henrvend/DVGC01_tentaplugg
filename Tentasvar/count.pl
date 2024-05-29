ucount(E,[], C).
ucount(E, [E|T], C) :- C is C +1, ucount(E,T,C).
ucount(E, [H|T], C) :- ucount(E,T,C).