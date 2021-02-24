% Elif Keles - 161044033
% part 2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example
%
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

distance(istanbul, antalya, 482). % flight distance – calculated using
distance(antalya, istanbul, 482). % https://www.distancecalculator.net
distance(istanbul, rize, 967). 
distance(rize, istanbul, 967).
distance(istanbul, van, 122).
distance(van, istanbul, 122).
distance(istanbul, ankara, 351).
distance(ankara, istanbul, 351).
distance(istanbul, gaziantep, 847).
distance(gaziantep, istanbul, 847).
distance(istanbul, izmir, 328).
distance(izmir, istanbul, 328).
distance(rize, van, 373).
distance(van, rize, 373).
distance(van, ankara, 920).
distance(ankara, van, 920).
distance(ankara, konya, 227).
distance(konya, ankara, 227).
distance(antalya, konya, 192).
distance(konya, antalya, 192).
distance(antalya, gaziantep, 592).
distance(gaziantep, antalya, 592).
distance(izmir, isparta, 308).
distance(isparta, izmir, 308).
distance(isparta, burdur, 24).
distance(burdur, isparta, 24).
distance(edirne, edremit, 914).
distance(edremit, edirne, 914).
distance(edremit, erzincan, 736).
distance(erzincan, edremit, 736).

% rules

%first check if there is a flight between the cities


sroute(X, Y, D) :- 
	distance(X, Y, D); %if here is a direct route from X to Y

	distance(Z, Y, D1), % not a direct route 
	\+(distance(X, Y, D)),
	X\=Y,
	notdeadend(Z),
	sroute(X, Z, D2),
	D is D1+ D2.



notdeadend(X):- % X is a city between Y and Z 
	
	flight(X, Y),
	flight(X, Z),
	Y\=Z. 