:- use_module(library(date_time)).

add_gigasecond(Date, GigasecondDate) :-
    % 1. Convert the input Date into a timestamp (seconds)
    date_time_stamp(Date, Timestamp),
    
    % 2. Add one gigasecond (1,000,000,000 seconds)
    NewTimestamp is Timestamp + 1000000000,
    
    % 3. Convert the new timestamp back into a date format
    stamp_date_time(NewTimestamp, GigasecondDate, 'UTC').
