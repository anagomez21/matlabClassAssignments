function [ maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean ] = genderIsoCalc(Gender,Day1,Day2,Day3)
%GENDERISOCALC Generates means of ismoetric strength values by gender
%   This function returns 4 outputs. The first 2 returns a matrix with
%   individual mean isometric strength values across all 3 days of lifting
%   for each gender.
%   The other 2 outputs return a single mean value for each gender (mean of
%   subjects means).
%
% INPUTS
% Gender: cell array containing participants gender (M or F)
% Day1: vector with day 1 isometric strength values
% Day2: vector with day 2 isometric strength values
% Day3: vector with day 3 isometric strength values
%
%Created by Ana Gomez October/06/2016

matGender = cell2mat(Gender); %converts cell array to matrix
male = zeros(size(matGender));
female = zeros(size(matGender));
for i=1:length(matGender) %generates vectors with subjects means 
   if matGender(i,1) == 'M'
       male(i) = ((Day1(i,1)+Day2(i,1)+Day3(i,1))/3);
   elseif matGender(i,1) == 'F'
       female(i) = ((Day1(i,1)+Day2(i,1)+Day3(i,1))/3);
   end
end
maleIsoIndMeans = male;
femaleIsoIndMeans = female;
maleNoZeros = setdiff(male,0); %new vector without 0 values, only the means
femaleNoZeros = setdiff(female,0); %new vector without 0 values, only the means
maleGroupIsoMean = mean(maleNoZeros);
femaleGroupIsoMean = mean(femaleNoZeros);

end

