function [ day1toDay2 ] = dayComparator( SubjectID,Day1,Day2 )
%DAYCOMPARATOR Returns IDs of people who improved from one day to another
%   This function will compare isometric strength values of 2 days and will
%   give the Subject's ID of the ones who improved from Day 1 to Day
%   2. So if the value of Day 2 is greater that Day 1, the subject's ID
%   will be in the output.
%
% INPUTS
% SubjectID: vector of subjects ID
% Day1: vector of isometric strength values of the first day
% Day2: vector of isometric strength values of the following day
%
% Created by Ana Gomez October/08/2016

improved = zeros(length(Day1));
for i=1:length(Day1)
    if Day1(i)<Day2(i)
        improved(i) = 1; %Vector with 0s and 1s, 0:didn't improve, 1:Day1<Day
    end
end
rows = zeros(length(Day1));
for i=1:length(Day1)
    if improved(i,1)==1
        rows(i) = i; %Vector with the number of rows that improved
    end    
end
rowsNoZeros = setdiff(rows,0);
for i=1:length(rowsNoZeros)
    d1td2(i) = SubjectID(rowsNoZeros(i,1),1); %Column vector with the Subject's ID that improved
end
day1toDay2 = d1td2';
end

