% /true if Path unifies with the shortest path from ghost to pacman/
pathOfGhost(Map, Path) :-
	% /Finds all paths from the ghost to pacman/
	findAllPaths(Map, [ShortestPath|OtherPaths]),
	length(ShortestPath, ShortestLength),
	reverse([ShortestPath|OtherPaths], ReversedList),
	member(Path, ReversedList),
	length(Path, PathLength),
	PathLength == ShortestLength.

% /returns all paths from ghost to pacman/
findAllPaths(Map, AllPaths) :-
	% /find coordinates of pacman/
	findPac(Map, PacRow, PacCol), !,
	% /find coordinates of ghost (only one in map)/
	findGhost(Map, GhostRow, GhostCol), !,
	% /calculate the shortest path(s) from ghost to pacman and place in a single list, AllPaths/
	setof(Path, findPath(Map, PacRow, PacCol, GhostRow, GhostCol,  Path), AllPaths).


% /base case, no move if pacman and ghost share a space (no symbol implemented)/	
findPath(_, X, Y, X, Y, []).
findPath(Map, PacRow, PacCol, GhostRow, GhostCol, [NextMove|T]) :-
	% /mark the current space with an x in preparation for moving/
	move(Map, GhostRow, GhostCol, NewMap),
	% /check that the next move is valid/
	valid(NewMap, GhostRow, GhostCol, NextMove),
	% /instantiate the next move/
	getNext(GhostRow, GhostCol, NextMove, NewGhostRow, NewGhostCol),
	% /recursively find the rest of the path/
	findPath(NewMap, PacRow, PacCol, NewGhostRow, NewGhostCol, T).

% /helper to find the row and column of pacman/	
findPac(Map, PacRow, PacCol) :-
	% /calls find with m as a parameter/
	find(Map, m, PacRow, PacCol).

% /helper to find the row and column of the ghost/	
findGhost(Map, GhostRow, GhostCol) :-
	% /calls find with correct parameters/
	% /accounts for all valid ghost symbols, empty (g), food (6), pellet (r)/
	find(Map, g, GhostRow, GhostCol);
	find(Map, 6, GhostRow, GhostCol);
	find(Map, r, GhostRow, GhostCol).	

% /finds the (Row, Col) of an Element or the Element at (Row, Col)/
find(Map, Element, Row, Col) :-
	% /true when NextRow is the Row'th element of Map/
	nth0(Row, Map, NextRow),
	% /true when Element is the Col'th element of NextRow/
	nth0(Col, NextRow, Element).

% /swaps the element at Index with the variable X/
% /if the index is 0, X goes at the head of the list/
swap([_|T], 0, X, [X|T]).
swap([H|T], Index, X, [H|End]):- 
	% /true if Index > 0/
	Index > 0,
	% /uses Index as a counter to determine when to actually perform the swap/
	NewIndex is Index-1, 
	% /recursively call swap until Index == 0, then will replace all elements before X/
	swap(T, NewIndex, X, End).

% /returns the change in row by moving up/
getNext(Row, Col, u, NewRow, NewCol) :-
	NewRow is Row - 1,
	NewCol is Col.

% /returns the change in row by moving down/
getNext(Row, Col, d, NewRow, NewCol) :-
	NewRow is Row + 1,
	NewCol is Col.

% /returns the change in column by moving right/
getNext(Row, Col, r, NewRow, NewCol) :-
	NewRow is Row,
	NewCol is Col + 1.

% /returns the change in column by moving left/
getNext(Row, Col, l, NewRow, NewCol) :-
	NewRow is Row,
	NewCol is Col - 1.

% /true if the next move is possible/	
valid(Map, Row, Col, NextMove) :-
	% /true if NextMove is up, down, right, or left (i.e., a valid move)/
	member(NextMove, [u, d, r, l]),
	% /gets the row and column NextMove results in/
	getNext(Row, Col, NextMove, NewRow, NewCol),
	% /instantiates Cell as the atom at (NewRow, NewCol)/
	find(Map, Cell, NewRow, NewCol),
	% /true if Cell is a member of the list (i.e., a valid ending cell)/
	member(Cell, [u, f, p, m, g, 6, r]).

% /creates a trail of moves so the valid functor returns false if the ghost tries to move backwards/	
move(Map, Row, Col, NewMap) :-
	% /true if CurrentRow is the Row'th element of Map/
	nth0(Row, Map, CurrentRow),
	% /Marks (Row, Col) with an x indicating it has been moved into/	
	swap(CurrentRow, Col, x, NewRow),
	% /Swaps the NewRow into it's place in the map/
	swap(Map, Row, NewRow, NewMap).

% /prints maps for debugging/
show([]) :-
	write('\n').
show([H|T]) :-
	write(H), write('\n'), show(T).
