:-consult(csce322a3p1).
:-consult(csce322a3p2).
	
% /checks a map according to specifications/	
makeMap(Map) :-
	% /keeps track of the appropriate cells/
	checkBorders(Map),
	% /fulfills the wall 10% requirement/
	!, percentWalls(Map),
	% /checks that power pellets are where they should be/
	!, checkPellets(Map),
	% /reachable is true only if it fails/ 
	!, reachable(Map).

% /true if the map borders are correct/
checkBorders(Map) :-
	outerRows(Map),
	innerRows(Map).

% /true if the first and last row consist of only borders (b)/
outerRows([]).
outerRows([FirstRow|T]) :-
	% /checks the first row/
	checkOuterRow(FirstRow),
	% /reverses the list for convenience and gets its head/
	reverse(T, [LastRow|_]),
	% /checks the last row/
	checkOuterRow(LastRow).

% /true if the entire row consists of borders (b)/
checkOuterRow([]).	
checkOuterRow([H|T]) :-
	% /if the head is a border, check the tail/
	H = b,
	checkOuterRow(T).
	
% /true if only the first and last elements of every inner row are borders (b)/
innerRows([]).
% /cuts off the head of the map which we don't need/
innerRows([_|T]) :-
	% /utilizes reverse to cut off tail/
	reverse(T, [_|Rows]),
	% /separate the lists/
	separateRows(Rows).

% /helper to separate rows/
separateRows([]).
separateRows([H|T]) :-
	% /checks the row according to specification/
	checkInnerRow(H),
	% /separates the next row recursively/
	separateRows(T).

% /true if only the first and last elements are borders (b)/
checkInnerRow([First|T]) :-
	% /utilizes reverse to cut off tail/
	reverse(T, [Last|MiddleElements]),
	% /true if the first elemet is a border (b)/
	First = b,
	% /true if the last elemet is a border (b)/
	Last = b,
	% /checks the middle elements/
	checkMiddle(MiddleElements).

% /true if the middle elements are all not borders/
checkMiddle([]).	
checkMiddle([H|T]) :-
	% /true only if H isn't a border (b)/
	not(H == b),
	% /true if H is a member of the valid cells/
	!,member(H, [f, u, g, w, 6, m, p, r]),
	checkMiddle(T).

% /true if power pellets (p) are all in corners within border cells/
checkPellets([_|Map]) :-
	% /first row is removed already, utilizes reverse to cut off last row and get first pellet row/
	reverse(Map, [FirstPRow|InnerRows]),
	% /get the last pellet row/
	reverse(InnerRows, [LastPRow|_]),
	% /check rows for pellets/
	checkForPellets(FirstPRow),
	checkForPellets(LastPRow).

% /true if the first and last element of the row are power pellets (p)/
checkForPellets([]).
% /case for	the last element being a border (b), true if the previous element is a pellet (p) or ghost (r)/
checkForPellets([H|b]) :-
	H = p; H = r.
% /case for the head of the list being a border (b), true if the next element is a pellet (p) or ghost (r)/
checkForPellets([b, H|_]) :-
	H = p; H = r.
% /if neither the head nor tail are borders, parse the rest of the list/
checkForPellets([_|T]) :-
	checkForPellets(T).

% /true if there is a path from pacman to a food, space, ghost, or power pellet/
reachable(Map) :-
	% /find the position of pacman/
	findPac(Map, PacRow, PacCol),
	% /true if Cell is a member of the list/
	member(Cell, [u, f, p, g, 6, r]),
	% /get the coordinates of the Cell/
	find(Map, Cell, DestRow, DestCol),
	% /true if there is a path from pacman to Cell/
	findPath(Map, DestRow, DestCol, PacRow, PacCol,  _).	
