%% Q7.1 Structures

% create a structure, mystruct that contains 3 fields.
% mystring : which contains your name
% mychange: a double (default for any number) containing the amount of loose change in your wallet or puse
% mygender: a logical, with 1 for female and 0 for male


% now make a second element in that structure (mystruct(2).fieldname) with
% the same information for someone else (imaginary is fine).


clear all
mystruct.mystring='Katie'
mystruct.mychange=72
mystruct.mygender=logical(1)


mystruct(2).mystring='Cara'
mystruct(2).mychange=11
mystruct(2).mygender=logical(1)

%% Q 7.2 Cell arrays

% Make a 3 (fields) x 2 (individuals) cell array that contains all the
% information of the structure above

% pull out the name of the second individual.
% pull out the amount of change that you had and add it to amount of change
% the other individual had.



myStructCell={mystruct.mystring; mystruct.mychange; mystruct.mygender}

SecondName=myStructCell{1,2}

TotalChange=myStructCell{2,1}+myStructCell{2,2}



