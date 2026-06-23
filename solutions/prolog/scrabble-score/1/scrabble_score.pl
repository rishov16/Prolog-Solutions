score_value('A', 1).
score_value('E', 1).
score_value('I', 1).
score_value('O', 1).
score_value('U', 1).
score_value('L', 1).
score_value('N', 1).
score_value('R', 1).
score_value('S', 1).
score_value('T', 1).
score_value('D', 2).
score_value('G', 2).
score_value('B', 3).
score_value('C', 3).
score_value('M', 3).
score_value('P', 3).
score_value('F', 4).
score_value('H', 4).
score_value('V', 4).
score_value('W', 4).
score_value('Y', 4).
score_value('K', 5).
score_value('J', 8).
score_value('X', 8).
score_value('Q', 10).
score_value('Z', 10).

score(Word, Score) :-
    string_upper(Word, UpperWord),
    string_chars(UpperWord, CharList),
    maplist(score_value, CharList, Values),
    sum_list(Values, Score).