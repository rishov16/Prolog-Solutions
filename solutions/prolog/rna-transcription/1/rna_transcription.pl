replace('G', 'C').
replace('C', 'G').
replace('T', 'A').
replace('A', 'U').

rna_transcription(DnaString, RnaString) :-
    string_chars(DnaString, DnaChars),
    maplist(replace, DnaChars, RnaChars),
    string_chars(RnaString, RnaChars).
    
    

