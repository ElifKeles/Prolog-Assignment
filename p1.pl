% Elif Keles - 161044033
% part 1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example
% ?- route(edirne,X).
% X = erzincan ;
% X = edremit ;
% :- -> if  	; -> or		 , -> and
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% knowledge base

flight(istanbul, antalya). % the fact that Istanbul and Antalya has a flight.

flight(antalya, istanbul).
flight(istanbul, rize).
flight(rize, istanbul).
flight(istanbul, van).
flight(van, istanbul).
flight(istanbul,ankara).
flight(ankara, istanbul).
flight(istanbul,gaziantep).
flight(gaziantep, istanbul).
flight(istanbul,izmir).
flight(izmir, istanbul).
flight(rize, van).
flight(van, rize).
flight(van, ankara).
flight(ankara, van).
flight(ankara, konya).
flight(konya, ankara).
flight(konya, antalya ).
flight(antalya, konya).
flight(antalya, gaziantep ).
flight(gaziantep, antalya).
flight(izmir, isparta).
flight(isparta, izmir).
flight(burdur, isparta).
flight(isparta, burdur).
flight(edirne, edremit).
flight(edremit, edirne).
flight(edremit, erzincan).
flight(erzincan, edremit).

% rules

route(X, Y):- 

	flight(X, Y);    % a predicate indicating there exist a route between
					% X and Y if there is flight between X and Y.

	
	flight(Z, Y),
	\+(flight(X, Y)),
	X\=Y,
	notdeadend(Z),
	route(X, Z).


notdeadend(X):- % X is a city between Y and Z 
	
	flight(X, Y),
	flight(X, Z),
	Y\=Z. 
