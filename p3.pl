% Elif Keles - 161044033
% part 3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example
% when(X,Y) –> time of the course X is Y
% where(X,Y) –> place of the course X is Y
% enroll(X,Y) –> student X is enrolled in course Y
% 
% :- -> if  	; -> or		 , -> and
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% knowledge base

when(102, 10).
when(108, 12).
when(341, 14).
when(455, 16).
when(452, 17).

where(102, z23).
where(108, z11).
where(341, z06).
where(455, 207).
where(452, 207).

enroll(a, 102).
enroll(a, 108).
enroll(b, 102).
enroll(c, 108).
enroll(d, 341).
enroll(e, 455).

% rules

%3.1)
% schedule(S,P,T) that associates a student to a place and time of class.

schedule(S, P, T) :- 
	enroll(S, C),
	where(C, P),
	when(C, T).


%3.2)
% usage(P,T) that gives the usage times of a classroom
usage(P, T):-
	where(C, P),
	when(C, T).


%3.3)
% conflict(X,Y) that gives true if X and Y conflicts due to classroom or time.
conflict(X, Y) :-
	where(X, P), %place 
	where(Y, P); %or
	when(X, T), %time
	when(Y, T).


%3.4)
% meet(X,Y) that gives true if student X and student Y are present in the same classroom at the same time
meet(X, Y):-
	enroll(X, C),
	enroll(Y, C).

