% Elif Keles - 161044033
% part 4)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example
% 
% 
% :- -> if  	; -> or		 , -> and
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% knowledge base

% 4.1) 
%) element(E,S) returns true if E is in S.
element(E,S):-
	member(E, S). %check if the element is in the list
	


% 4.2)
% union(S1,S2,S3) returns true if S3 is the union of S1 and S2.
union(S1, S2, S3):-	
	foreach(element(E, S1), element(E, S3)),
	foreach(element(E, S2), element(E, S3)),
	foreach(element(E, S3), element(E, S1); element(E, S2)). %no extra elements



% 4.3)
% intersect(S1,S2,S3) returns true if S3 is the intersection of of S1 and S2.
intersect(S1,S2,S3) :-
	foreach((element(E, S1), element(E, S2)), element(E, S3)),
	foreach(element(E, S3), (element(E, S1), element(E, S2))). 



% 4.4)
% equivalent(S1,S2) returns true if S1 and S2 are equivalent sets.
equivalent(S1,S2):-
	S1==S2. 

