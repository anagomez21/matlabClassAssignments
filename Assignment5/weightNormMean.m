function [ normDay1mean ] = weightNormMean( Weight,Day1)
%WEIGHTNORMMEAN Returns the mean of the normalized data of a day
%   This function will weight normalize de data of the isometric strength
%   values of subjects in one day, and will output the mean of all subjects
%   for that day.
% 
% INPUTS
% Weight: Vector with subject's weight
% Day1: Vector with one day isometric strength values
%
% Created by Ana Gomez October/08/016

normDay1 = zeros(length(Day1));
for i=1:length(Day1)
    normDay1(i) = Day1(i)/Weight(i); %vector with weight normalized strength data
end
normDay1mean = setdiff(mean(normDay1),0);

end

