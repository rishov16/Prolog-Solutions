string_reverse(S, Reversed) :-
    string_chars(S, List),
    reverse(List, ReversedList),
    string_chars(Reversed, ReversedList).
