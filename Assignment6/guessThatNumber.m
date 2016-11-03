function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME:
%
%         DUE: October 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');

while level ~= beginner && level ~= moderate && level ~= advanced %the loop
    %as it was, was always going to be true, I figured it out when I ran it
    %because it didn't matter if the number was correct or incorrect it
    %would never get out of the loop, because for example if the number was
    %2 (a right number) as the conditionals used were '||' then level would
    %be different to beginner and that was enough to start the loop, so I
    %changed it for '&&' so that way the only way it goes in the loop is
    %when level is different from 1, 2 and 3
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %I ran the program and the error message indicated an
    %error in line 54, the problem was that there was only one '=' sign that
    %means you are assigning a value to a variable, but in this case it's a
    %conditional searching for equality so I added the missing '=' sign
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
else
    highest = advancedHighest; %I was reading the code and found that the
    %variable name was not writen well, it was 'advancedhighest', so I changed
    %the h for an upper case
    
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randsample(highest,1); %I ran this line in the command
%window and the value that it would give was always 10, not a random number
%so I changed to the function randsample which generates a random number
%from 1 to the number that you define

% initialize number of guesses and User_guess

numOfTries = 0;%When I ran the code I saw that the number of tries that it
%told me when I guessed the number was always one number higher, so I
%looked at the code and saw that with each valid number the user inputed
%nomOfTries would increase 1 so with the fisrt number it increased to 2
%because it was starting in 1, so I just changed the initial value to 0
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');

while userGuess < 1 || userGuess > highest %I tried inputing the maximum
    %values (10, 100 and 1000) and it said it was not a valid guess, when
    %the instructions say to input a gues from 1 to the highest, so I
    %removed the '=', because if it is equal to the highest values is a
    %valid input
    
    fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
    
    userGuess = input('');
        
end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %I was reading through the code and noticed
    %that the sign was not correct because it was going to tell the user
    % that the value was too low when actually was too high, and that 
    %condition is already defined in the following elseif, so I changed the
    %'>' for '<'
    fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber
    fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
    fprintf('\nLucky You!  You got it on your first try!\n\n');
else
    fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
        secretNumber,numOfTries); %I found the problem when I ran the program
    %the second'%d' had no variable relationed to it, so it would just pick
    %up on the next fprintf and use that as the output, so I just defined
    %the variable that needed to go in that place which was 'numOfTries'
end   %I ran the program and the error message indicated that there was a
%missing END, every loop should have an end that indicates where that
%loop ends, so I added the END in this line    
    
    
    
end  % of guessing while loop
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');% I ran the
%program and noticed that it kept saying Game Over even if they hadn't
%guessed the number, and then gave them the option to enter another number,
%so I took the fprintf outside the loop, becuase we only want this message
%to be displayed when the user guesses the right number
end % end of game % the end of game comment was here but the END wasn't, this END
%indicates the end of the function