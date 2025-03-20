% rev(Xs, Ys) is the main predicate that is called to reverse the list Xs into Ys.
%It calls rev_helper with an empty accumulator to start the reversal process.

rev(Xs, Ys) :- swap(Xs, [], Ys).

% Base case: when the list is empty, the accumulator is the reversed list.
swap([], Acc, Acc).

% Recursive case: take the head (H) of the list and add it to the accumulator,
% then recursively reverse the tail (T).
swap([H|T], Acc, Ys) :-
    swap(T, [H|Acc], Ys).

%rev([1,2,3,4],Ys). -> [4,3,2,1]