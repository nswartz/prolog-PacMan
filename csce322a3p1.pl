% /true if the number of walls is 10% of the total Map/
percentWalls([]).
percentWalls(Map) :-
	% /List is Map reduced to a single list/
	flatten(Map, List),
	% /N is the number of atoms in List/
	length(List, N),
	% /Walls is the number of walls (w) in List/
	countWalls(List, w, Walls),
	% /true if the number of walls is greater than total atoms divided by 10/
	Walls >= N / 10.

% /there are no atoms in an empty list/
countWalls([], _, 0).

% /if w is the Head of the list/
countWalls([H|T], H, Walls) :- 
	% /utilize cut to ensure no backtracking (List is parsed once)/
	!, countWalls(T, H, Count),
	% /recursively build the number of walls/
	Walls is Count + 1.
% /if w is not the Head of the list, call it again/
countWalls([_|T], X, Walls) :- 
	countWalls(T, X, Walls).