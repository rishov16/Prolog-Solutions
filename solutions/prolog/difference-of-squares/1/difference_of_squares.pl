square_of_sum(N, Result) :-
    Result is (N * (N + 1) / 2) ^ 2.

sum_of_squares(N, Result) :-
    Result is N * (N + 1) * (2 * N + 1) / 6.

difference(N, Result) :-
    square_of_sum(N, SquareSum),
    sum_of_squares(N, SumSquares),
    Result is SquareSum - SumSquares.
