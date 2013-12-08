main :- true.


main1p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b], [b, p, w, p, b], [b, m, f, g, b], [b, u, w, w, b], [b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main2p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b], [b, p, f, p, b], [b, m, f, g, b], [b, u, w, u, b], [b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main3p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[w, w], [w, w]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main4p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b, b, b], [b, p, w, w, w, p, b], [b, f, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main5p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b], [b, w, b], [b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main6p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b], [b, p, u, p, b], [b, m, f, g, b], [b, u, u, u, b], [b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main7p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b, b, b, b, b, b], [b, p, f, f, w, f, f, f, p, b], [b, f, f, f, f, f, f, f, f, b], [b, f, f, w, g, g, w, f, f, b], [b, f, f, w, g, g, w, f, f, b], [b, f, f, w, w, w, w, f, f, b], [b, f, f, f, f, f, f, f, f, b], [b, f, f, f, f, f, f, f, f, b], [b, p, f, f, f, f, f, f, p, b], [b, b, b, b, b, b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main8p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b, b, b, b, b, b], [b, p, f, f, w, w, f, f, p, b], [b, f, f, f, f, f, f, f, f, b], [b, f, f, w, g, g, w, f, f, b], [b, f, f, w, g, g, w, f, f, b], [b, f, f, w, w, w, w, f, f, b], [b, f, f, f, f, f, f, f, f, b], [b, f, f, f, f, f, f, f, f, b], [b, p, f, f, w, w, f, f, p, b], [b, b, b, b, b, b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main9p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[w, w, w, w], [w, p, p, w], [w, p, p, w], [w, w, w, w]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main10p1 :-
	(
	consult(csce322a3p1),
	percentWalls([[b, b, b, b, b, b, b, b, b, b], [b, p, f, f, w, w, f, f, p, b], [b, f, f, f, f, f, f, f, f, b], [b, f, f, w, g, g, w, f, f, b], [b, f, f, w, g, g, w, f, f, b], [b, f, f, w, w, w, w, f, f, b], [b, f, f, f, f, f, f, f, f, b], [b, f, f, f, f, f, f, f, f, b], [b, p, f, f, f, f, f, f, p, b], [b, b, b, b, b, b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
	
testp2 :-
	(
	consult(csce322a3p2),
	findPac([[b, b, b, b, b], [b, p, u, p, b], [b, f, m, g, b], [b, p, w, p, b], [b, b, b, b, b]], p1, p2),
	print(p1),
	print(p2),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).


main1p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, p, u, p, b], [b, f, m, g, b], [b, p, w, p, b], [b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).

main2p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, m, w, p, b], [b, f, u, u, b], [b, p, w, g, b], [b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main3p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, m, w, p, b], [b, f, u, u, b], [b, p, u, g, b], [b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main4p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, m, w, p, b], [b, f, u, w, b], [b, p, w, g, b], [b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main5p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, m, w, p, b], [b, f, u, u, b], [b, p, u, g, b], [b, b, b, b, b]], [u, l, l, u]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main6p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, g, u, u, b], [b, w, w, f, b], [b, m, f, f, b], [b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main7p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, p, w, p, b], [b, m, w, g, b], [b, p, w, p, b], [b, b, b, b, b]], [l, l]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main8p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b], [b, p, u, p, b], [b, f, m, g, b], [b, p, w, p, b], [b, b, b, b, b]], [u, l, d]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main9p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b, b, b, b, b, b], [b, w, w, f, f, m, f, w, w, b], [b, w, w, w, f, f, f, w, w, b], [b, w, w, w, f, f, f, w, w, b], [b, w, w, w, f, f, f, w, w, b], [b, w, w, w, f, f, f, w, w, b], [b, w, w, w, f, f, f, w, w, b], [b, w, w, w, f, f, f, w, w, b], [b, w, w, w, f, g, f, w, w, b], [b, b, b, b, b, b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
main10p2 :-
	(
	consult(csce322a3p2),
	pathOfGhost([[b, b, b, b, b, b, b, b, b, b], [b, p, f, f, f, f, f, f, m, b], [b, f, w, w, w, w, w, w, w, b], [b, f, f, f, f, f, f, f, f, b], [b, w, w, w, w, w, w, w, f, b], [b, f, f, f, f, f, f, f, f, b], [b, f, w, w, w, w, w, w, w, b], [b, f, f, f, f, f, f, f, f, b], [b, g, w, f, w, f, w, f, f, b], [b, b, b, b, b, b, b, b, b, b]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).
	
test :-
	(
	consult(csce322a3p3),
	least([[b, b, b, b, b], [b, p, w, p]], Path),
	print(Path),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
	
main1p3 :-
	(
	consult(csce322a3p3),
	makeMap([
		[b, b, b, b, b],
		 [b, p, w, p, b], 
		 [b, f, m, g, b], 
		 [b, p, w, p, b], 
		 [b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main2p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b], [b, p, w, p, b], [b, w, m, g, b], [b, p, w, p, b], [b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main3p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, p, w, w, w, p, b], [b, f, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main4p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, p, w, w, w, p, b], [b, f, f, f, f, f, b], [b, m, u, Var, u, g, b], [b, f, f, f, f, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print(Var),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main5p3 :-
	(
	consult(csce322a3p3),
	makeMap([[V1, V2, V3, V4, V5, V6, V7], [b, p, w, w, w, p, b], [b, f, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print([V1, V2, V3, V4, V5, V6, V7]),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main6p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, p, w, V, w, p, b], [b, f, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, p, w, f, w, p, b], [b, b, b, b, b, b, b]]),
	print(V),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main7p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, p, w, w, w, V, b], [b, f, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, r, w, w, w, r, b], [b, b, b, b, b, b, b]]),
	print(V),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main8p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, p, w, f, f, p, b], [b, V, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print(V),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main9p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, V, f, f, w, p, b], [b, f, f, f, f, f, b], [b, m, u, u, u, g, b], [b, f, f, f, f, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print(V),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	
	
main10p3 :-
	(
	consult(csce322a3p3),
	makeMap([[b, b, b, b, b, b, b], [b, p, w, w, w, p, b], [b, f, f, m, f, f, b], [b, w, w, w, w, w, b], [b, f, f, f, m, f, b], [b, p, w, w, w, p, b], [b, b, b, b, b, b, b]]),
	print(success),
	print('\n')
	);
	(
	print(fail),
	print('\n')
	).	

