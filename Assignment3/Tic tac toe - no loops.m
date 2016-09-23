%Assignment 3: Tic Tac Toe
%Name: Ana Gomez
%Due: September 27
% This code displays a Tic Tac Toe and allows the user to play against the
% computer

EndGame = 1; %variable for ending the game when invalid numbers are inputed or someone wins
%-%-%-%-%-%-%-%-%-%-%-%-%-%--Welcome message--%-%-%-%-%-%-%-%-%-%-%-%-%-%-%

fprintf('Welcome to the Tic Tac Toe game!! \nYou are going to play against the computer, just follow the instructions and have fun!!!! \n \nThis is the game board\n\n')
GameBoard = ['1','2','3';'4','5','6';'7','8','9'];
num2str(GameBoard);
disp(GameBoard)
fprintf('\nThe computer will play with ''O'' and you will play with ''X''\nIf you enter 3 times an invalid number the game is over.\nThe computer will make the first move!\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%----Computers first move----%%%%%%%%%%%%%%%%%%%%%%%%%%%
GameBoard(2,2) = 'O'; 
disp(GameBoard)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%----Users first move----%%%%%%%%%%%%%%%%%%%%%%%%%%%
move1 = input('Type in the number corresponding to the game board space in which you want to play \nand then press "Enter"\n');
clc
if move1 == 5;
    move1= input('Type a valid number\n');
elseif move1 > 9;
    move1= input('Type a valid number\n');
end
if move1 == 5;
    move1= input('Type a valid number\n');
elseif move1 > 9;
    move1= input('Type a valid number\n');
end
if move1 == 5;
    disp('GAME OVER!!')
    EndGame = 100;
elseif move1 > 9;
    disp('GAME OVER!!')
    EndGame = 100;
end
if EndGame == 100;
    EndGame = 100;
else
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
end
used = [5,move1]; %vector of already taken spaces
if EndGame == 100;
    EndGame = 100;
else
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
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%----Users second move----%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2];
if EndGame == 100;
    EndGame = 100;
else
move2 = input('It''s your turn again!\nType in a valid number in which you want to play, then press Enter\n');
clc
if move2 == 5;
    move2= input('Type a valid number\n');
elseif move2 == used(1,2);
    move2= input('Type a valid number\n');
elseif move2 == used(1,3);
    move2= input('Type a valid number\n');
elseif move2 > 9;
    move2= input('Type a valid number\n');
end
if move2 == 5;
    move2= input('Type a valid number\n');
elseif move2 == used(1,2);
    move2= input('Type a valid number\n');
elseif move2 == used(1,3);
    move2= input('Type a valid number\n');
elseif move2 > 9;
    move2= input('Type a valid number\n');
end
if move2 == 5;
    disp('GAME OVER!!')
    EndGame = 100;
elseif move2 == used(1,2);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move2 == used(1,3);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move2 > 9;
    disp('GAME OVER!!');
    EndGame = 100;
end
if EndGame == 100;
    EndGame = 100;
else
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
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%----Computers third move----%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2];
if EndGame == 100;
    EndGame = 100;
else
disp('Computers turn!!')
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
end
%%%%%%%%%%%%%%%--This section evaluates if the computer won--%%%%%%%%%%%%%%
if (GameBoard(1,1)=='O')&&(GameBoard(1,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,1)=='O')&&(GameBoard(3,1)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='O')&&(GameBoard(3,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,3)=='O')&&(GameBoard(2,3)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,2)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,2)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(2,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(2,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%----Users third move----%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3];
if EndGame == 100;
    EndGame = 100;
else
move3 = input('It''s your turn again!\nType in a valid number in which you want to play, then press Enter\n');
clc
if move3 == 5;
    move3= input('Type a valid number\n');
elseif move3 == used(1,2);
    move3= input('Type a valid number\n');
elseif move3 == used(1,3);
    move3= input('Type a valid number\n');
elseif move3 == used(1,4);
    move3= input('Type a valid number\n');
elseif move3 == used(1,5);
    move3= input('Type a valid number\n');
elseif move3 > 9;
    move3= input('Type a valid number\n');
end
if move3 == 5;
    move3= input('Type a valid number\n');
elseif move3 == used(1,2);
    move3= input('Type a valid number\n');
elseif move3 == used(1,3);
    move3= input('Type a valid number\n');
elseif move3 == used(1,4);
    move3= input('Type a valid number\n');
elseif move3 == used(1,5);
    move3= input('Type a valid number\n');
elseif move3 > 9;
    move3= input('Type a valid number\n');
end
if move3 == 5;
    disp('GAME OVER!!')
    EndGame = 100;
elseif move3 == used(1,2);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move3 == used(1,3);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move3 == used(1,4);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move3 == used(1,5);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move3 > 9;
    disp('GAME OVER!!');
    EndGame = 100;
end
if EndGame == 100;
    EndGame = 100;
else
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
end
end
%%%%%%%%%%%%%%--This section evaluates if the user won--%%%%%%%%%%%%%%%%%%%
if (GameBoard(1,1)=='X')&&(GameBoard(1,2)=='X')&&(GameBoard(1,3)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='X')&&(GameBoard(2,1)=='X')&&(GameBoard(3,1)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='X')&&(GameBoard(3,2)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
elseif (GameBoard(1,3)=='X')&&(GameBoard(2,3)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%----Computers fourth move----%%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3,move3];
if EndGame == 100;
    EndGame = 100;
else
disp('Computers turn!!')
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
end
%%%%%%%%%%%%%%%--This section evaluates if the computer won--%%%%%%%%%%%%%%
if EndGame == 100;
    EndGame = 100;
else
if (GameBoard(1,1)=='O')&&(GameBoard(1,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,1)=='O')&&(GameBoard(3,1)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='O')&&(GameBoard(3,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,3)=='O')&&(GameBoard(2,3)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,2)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,2)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(2,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(2,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%----Users fourth move----%%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3,move3,CompMove4];
if EndGame == 100;
    EndGame = 100;
else
move4 = input('It''s your turn again!\nType in a valid number in which you want to play, then press Enter\n');
clc
if move4 == 5;
    move4= input('Type a valid number\n');
elseif move4 == used(1,2);
    move4= input('Type a valid number\n');
elseif move4 == used(1,3);
    move4= input('Type a valid number\n');
elseif move4 == used(1,4);
    move4= input('Type a valid number\n');
elseif move4 == used(1,5);
    move4= input('Type a valid number\n');
elseif move4 == used(1,6);
    move4= input('Type a valid number\n');
elseif move4 == used(1,7);
    move4= input('Type a valid number\n');
elseif move4 > 9;
    move4= input('Type a valid number\n');
end
if move4 == 5;
    move4= input('Type a valid number\n');
elseif move4 == used(1,2);
    move4= input('Type a valid number\n');
elseif move4 == used(1,3);
    move4= input('Type a valid number\n');
elseif move4 == used(1,4);
    move4= input('Type a valid number\n');
elseif move4 == used(1,5);
    move4= input('Type a valid number\n');
elseif move4 == used(1,6);
    move4= input('Type a valid number\n');
elseif move4 == used(1,7);
    move4= input('Type a valid number\n');
elseif move4 > 9;
    move4= input('Type a valid number\n');
end
if move4 == 5;
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 == used(1,2);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 == used(1,3);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 == used(1,4);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 == used(1,5);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 == used(1,6);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 == used(1,7);
    disp('GAME OVER!!')
    EndGame = 100;
elseif move4 > 9;
    disp('GAME OVER!!');
    EndGame = 100;
end
if EndGame == 100;
    EndGame = 100;
else
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
end
end
%%%%%%%%%%%%%%%%--This section evaluates if the user won--%%%%%%%%%%%%%%%%%
if EndGame == 100;
    EndGame = 100;
else
if (GameBoard(1,1)=='X')&&(GameBoard(1,2)=='X')&&(GameBoard(1,3)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='X')&&(GameBoard(2,1)=='X')&&(GameBoard(3,1)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='X')&&(GameBoard(3,2)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
elseif (GameBoard(1,3)=='X')&&(GameBoard(2,3)=='X')&&(GameBoard(3,3)=='X')
    disp('You Win! Congratulations!!')
    EndGame = 100;
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%----Computers fifth move----%%%%%%%%%%%%%%%%%%%%%%%%%%
used = [5,move1,CompMove2,move2,CompMove3,move3,CompMove4,move4];
if EndGame == 100;
    EndGame = 100;
else
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
end
%%%%%%%%%%%%%%%%--This section evaluates if the computer won--%%%%%%%%%%%%%
if EndGame == 100;
    EndGame = 100;
else
if (GameBoard(1,1)=='O')&&(GameBoard(1,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,1)=='O')&&(GameBoard(3,1)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='O')&&(GameBoard(3,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,3)=='O')&&(GameBoard(2,3)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,2)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,2)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(2,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(2,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(1,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(3,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
elseif (GameBoard(3,1)=='O')&&(GameBoard(2,2)=='O')&&(GameBoard(1,3)=='O')
    disp('The computer wins! Better luck next time!!')
    EndGame = 100;
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%----Display message if no one wins----%%%%%%%%%%%%%%%%%%%
if EndGame == 1
    disp('No one wins! Better luck next time!')
end
%%%%%%%%%%%%%%%%%%%%%%%----------END----------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%