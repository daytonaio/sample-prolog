% Facts about parent relationships
parent(john, mary).    % john is parent of mary
parent(john, tom).     % john is parent of tom
parent(mary, ann).     % mary is parent of ann
parent(mary, pat).     % mary is parent of pat
parent(tom, jim).      % tom is parent of jim

% Rules
% X is grandparent of Z if X is parent of Y and Y is parent of Z
grandparent(X, Z) :- 
    parent(X, Y),
    parent(Y, Z).

% X is sibling of Y if they share a parent and are not the same person
sibling(X, Y) :- 
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% X is ancestor of Y if X is parent of Y or 
% X is parent of someone who is ancestor of Y
ancestor(X, Y) :- 
    parent(X, Y).
ancestor(X, Y) :- 
    parent(X, Z),
    ancestor(Z, Y).

% Example queries (in interactive mode):
% ?- grandparent(john, ann).    % Is john grandparent of ann?
% ?- sibling(ann, pat).         % Are ann and pat siblings?
% ?- ancestor(john, jim).       % Is john ancestor of jim?
% ?- findall(X, parent(mary, X), Children).  % List all mary's children

% Example queries (in script mode):
main :- 
    write('Test grandparent(john, ann): '),
    (grandparent(john, ann) -> write(true) ; write(false)), nl,
    
    write('Test sibling(ann, pat): '),
    (sibling(ann, pat) -> write(true) ; write(false)), nl,
    
    write('Test ancestor(john, jim): '),
    (ancestor(john, jim) -> write(true) ; write(false)), nl,
    
    write('Mary''s children: '),
    findall(X, parent(mary, X), Children),
    write(Children), nl.

:- initialization(main).
