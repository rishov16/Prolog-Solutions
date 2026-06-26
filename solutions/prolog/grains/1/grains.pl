% Calculate grains on a specific square
% Added constraints to ensure the square is valid
square(SquareNumber, Value) :-
    SquareNumber >= 1,
    SquareNumber =< 64,
    Value is 2^(SquareNumber - 1).

% Calculate total grains on the board
% The total sum of a geometric series 2^0 + ... + 2^63 is 2^64 - 1
total(Total) :-
    Total is 2^64 - 1.
