%Assignment 4: Tic Tac Toe with loops
%Name: Ana Gomez
%Due: October 6
% This code displays a Tic Tac Toe and allows the user to play against the
% computer as many times as he wants
clc
fprintf('Welcome to the Tic Tac Toe game!! \n')
playAgain = input('Would you like to play an amazing Tic Tac Toe game against the computer?\nPress 1 if you want to play, and press 0 if you would like to exit the game, then press Enter\n');
while (playAgain == 1) %while loop that will start if player decides to play again
    while (playAgain == 1) %while loop containing tic tac toe game
GameBoard = ['1','2','3';'4','5','6';'7','8','9'];
num2str(GameBoard);
fprintf('This is the gameboard\n')
disp(GameBoard)
fprintf('\nThe computer will play with ''O'' and you will play with ''X''\nIf you enter 3 times an invalid number the game is over.\n\nThe computer will make the first move!\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%----Computers first move----%%%%%%%%%%%%%%%%%%%%%%%%%%%
GameBoard(2,2) = 'O'; 
disp(GameBoard)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%----Users first move----%%%%%%%%%%%%%%%%%%%%%%%%%%%
move1 = input('\nType in the number corresponding to the game board space in which you want to play \nand then press "Enter"\n');
if move1 == 5;
    move1= input('\nType a valid number\n');
elseif move1 > 9;
    move1= input('\nType a valid number\n');
end
if move1 == 5;
    move1= input('\nType a valid number\n');
elseif move1 > 9;
    move1= input('\nType a valid number\n');
end
if move1 == 5;
    disp('GAME OVER!!')
    break
elseif move1 > 9;
    disp('GAME OVER!!')
    break
end
switch (move1)
    case 1
        GameBoard(1,1) = 'X';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'X';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'X';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'X';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'X';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'X';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'X';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'X';
        disp(GameBoard)
end
used = [5,move1]; %vector of already taken spaces
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%%%%%%%%%%%%%%%%%%%%%%----Computers second move----%%%%%%%%%%%%%%%%%%%%%%%%
disp('Computers turn!!')
CompMove2 = randsample(setdiff(1:9, used), 1);
switch (CompMove2)
    case 1
        GameBoard(1,1) = 'O';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'O';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'O';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'O';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'O';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'O';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'O';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'O';
        disp(GameBoard)
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%----Users second move----%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2];
move2 = input('\nIt''s your turn again!\nType in a valid number in which you want to play, then press Enter\n');
for i=1:length(used)
   if move2 == used(i);
    move2= input('\nType a valid number\n');
    break
   elseif move2>9
     move2= input('\nType a valid number\n');
     break
   end       
end
for i=1:length(used)
   if move2 == used(i);
    move2= input('\nType a valid number\n');
    break
   elseif move2>9
     move2= input('\nType a valid number\n');
     break
   end
end
for i=1:length(used)
   if move2 == used(i);
    fprintf('GAME OVER!!!\n')
    GameOver=11;
    break
   end
end
if GameOver == 11;
    break
end
switch (move2)
    case 1
        GameBoard(1,1) = 'X';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'X';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'X';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'X';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'X';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'X';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'X';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'X';
        disp(GameBoard)
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%----Computers third move----%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2];
fprintf('\nComputers turn!')
CompMove3 = randsample(setdiff(1:9, used), 1); 
switch (CompMove3)
    case 1
        GameBoard(1,1) = 'O';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'O';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'O';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'O';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'O';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'O';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'O';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'O';
        disp(GameBoard)
end
%%%%%%%%%%%%%%%--This section evaluates if the computer won--%%%%%%%%%%%%%%
if (GameBoard(1,1)=='O')&&(GameBoard(1,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,1)=='O')&&(GameBoard(3,1)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(3,1)=='O')&&(GameBoard(3,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,3)=='O')&&(GameBoard(2,3)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,2)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,2)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(2,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(2,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(3,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%----Users third move----%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3];
move3 = input('\nIt''s your turn again!\nType in a valid number in which you want to play, then press Enter\n');
for i=1:length(used)
   if move3 == used(i);
    move3= input('\nType a valid number\n');
    break
   elseif move2>9
     move2= input('\nType a valid number\n');
     break
   end
end
for i=1:length(used)
   if move3 == used(i);
    move3= input('\nType a valid number\n');
    break
   elseif move2>9
     move2= input('\nType a valid number\n');
     break
   end
end
for i=1:length(used)
   if move3 == used(i);
     fprintf('GAME OVER!!!\n')
    GameOver=11;
    break
   end
end
if GameOver == 11;
    break
end
switch (move3)
    case 1
        GameBoard(1,1) = 'X';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'X';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'X';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'X';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'X';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'X';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'X';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'X';
        disp(GameBoard)
end
%%%%%%%%%%%%%%--This section evaluates if the user won--%%%%%%%%%%%%%%%%%%%
if (GameBoard(1,1)=='X')&&(GameBoard(1,2)=='X')&&(GameBoard(1,3)=='X')
    disp('You Win! Congratulations!!')
    break
elseif (GameBoard(1,1)=='X')&&(GameBoard(2,1)=='X')&&(GameBoard(3,1)=='X')
    disp('You Win! Congratulations!!')
    break
elseif (GameBoard(3,1)=='X')&&(GameBoard(3,2)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    break
elseif (GameBoard(1,3)=='X')&&(GameBoard(2,3)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%----Computers fourth move----%%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3,move3];
fprintf('\nComputers turn!!')
CompMove4 = randsample(setdiff(1:9, used), 1); 
switch (CompMove4)
    case 1
        GameBoard(1,1) = 'O';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'O';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'O';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'O';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'O';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'O';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'O';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'O';
        disp(GameBoard)
end
%%%%%%%%%%%%%%%--This section evaluates if the computer won--%%%%%%%%%%%%%%
if (GameBoard(1,1)=='O')&&(GameBoard(1,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,1)=='O')&&(GameBoard(3,1)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(3,1)=='O')&&(GameBoard(3,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,3)=='O')&&(GameBoard(2,3)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,2)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,2)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(2,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(2,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(3,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%----Users fourth move----%%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3,move3,CompMove4];
move4 = input('\nIt''s your turn again!\nType in a valid number in which you want to play, then press Enter\n');
for i=1:length(used)
   if move4 == used(i);
    move4= input('\nType a valid number\n');
    break
   elseif move2>9
     move2= input('\nType a valid number\n');
     break
   end
end
for i=1:length(used)
   if move4 == used(i);
    move4= input('\nType a valid number\n');
    break
   elseif move2>9
     move2= input('\nType a valid number\n');
     break
   end
end
for i=1:length(used)
   if move4 == used(i);
     fprintf('GAME OVER!!!\n')
    GameOver=11;
    break
   end
end
if GameOver == 11;
    break
end

switch (move4)
    case 1
        GameBoard(1,1) = 'X';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'X';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'X';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'X';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'X';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'X';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'X';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'X';
        disp(GameBoard)
end
%%%%%%%%%%%%%%%%--This section evaluates if the user won--%%%%%%%%%%%%%%%%%
if (GameBoard(1,1)=='X')&&(GameBoard(1,2)=='X')&&(GameBoard(1,3)=='X')
    disp('You Win! Congratulations!!')
    break
elseif (GameBoard(1,1)=='X')&&(GameBoard(2,1)=='X')&&(GameBoard(3,1)=='X')
    disp('You Win! Congratulations!!')
    break
elseif (GameBoard(3,1)=='X')&&(GameBoard(3,2)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    break
elseif (GameBoard(1,3)=='X')&&(GameBoard(2,3)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%----Computers fifth move----%%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3,move3,CompMove4,move4];
disp('Computers turn!!')
CompMove5 = setdiff(1:9, used); %computers fifth move
switch (CompMove5)
    case 1
        GameBoard(1,1) = 'O';
        disp(GameBoard)
    case 2
        GameBoard(1,2) = 'O';
        disp(GameBoard)
    case 3
        GameBoard(1,3) = 'O';
        disp(GameBoard)
    case 4
        GameBoard(2,1) = 'O';
        disp(GameBoard)
    case 6
        GameBoard(2,3) = 'O';
        disp(GameBoard)
    case 7
        GameBoard(3,1) = 'O';
        disp(GameBoard)
    case 8
        GameBoard(3,2) = 'O';
        disp(GameBoard)
    case 9
        GameBoard(3,3) = 'O';
        disp(GameBoard)
end
%%%%%%%%%%%%%%%%--This section evaluates if the computer won--%%%%%%%%%%%%%
if (GameBoard(1,1)=='O')&&(GameBoard(1,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,1)=='O')&&(GameBoard(3,1)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(3,1)=='O')&&(GameBoard(3,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,3)=='O')&&(GameBoard(2,3)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,2)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,2)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(2,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(2,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
elseif (GameBoard(3,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%----Display message if no one wins----%%%%%%%%%%%%%%%%%%%
EndGame = 1;
if EndGame == 1
    disp('No one wins! Better luck next time!')
end
    end
%%%%%%----Input for the user to decide if they want to play again----%%%%%%    
playAgain=input('Doyou want to play again? Type 1 if yes, type 0 if you want to exit the game\n');
clc
end
fprintf('Bye bye! Have a nice day!!\n') %Display message when user decides to exit program