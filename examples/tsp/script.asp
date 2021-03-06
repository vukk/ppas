
% Map edge and node through
_pp(node(N), S) :- _as(node(N), S).
_pp(edge(N1, N2), S) :- _as(edge(N1, N2), S).

% Edges that were just removed
removed(From, To, Step) :- _as(edge(From,To), Step-1), not _as(edge(From,To), Step).
% Edges that were just added
added(From, To, Step) :- not _as(edge(From,To), Step-1), _as(edge(From,To), Step).
% Other edges
other(From, To, Step) :- _as(edge(From,To), Step), not added(From, To, Step).

% Add and color removed edges
_pp(edge(From,To),Step) :- removed(From,To,Step).
_pp(edgeAttr((From, To), color, "#ee0000"), Step) :- removed(From, To, Step).

% Color added edges green
_pp(edgeAttr((From, To), color, "#00aa00"), Step) :- added(From, To, Step).
% Color other edges black
_pp(edgeAttr((From, To), color, "#222222"), Step) :- other(From, To, Step).
