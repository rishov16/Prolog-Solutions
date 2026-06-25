% Calculate the radius squared first
score(X, Y, Score) :-
    DistanceSquared is X*X + Y*Y,
    (   DistanceSquared =< 1
    ->  Score = 10
    ;   DistanceSquared =< 25
    ->  Score = 5
    ;   DistanceSquared =< 100
    ->  Score = 1
    ;   Score = 0
    ).



