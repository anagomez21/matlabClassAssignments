%Assignment 5: Analyzing Isometric Strength Data
%Name: Ana Gomez
%Due: October 20
%This code analyzes isometric strength data
clear all
close all
clc
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv'); %imports file with data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%----Outputs requested----%%%%%%%%%%%%%%%%%%%%%%%%%%
[ maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean ]= genderIsoCalc(Gender,Day1,Day2,Day3);
[ day1toDay2 ] = dayComparator( SubjectID,Day1,Day2 );
[ day2toDay3 ] = dayComparator( SubjectID,Day2,Day3 );
[ normDay1mean ] = weightNormMean( Weight,Day1);
[ normDay2mean ] = weightNormMean( Weight,Day2);
[ normDay3mean ] = weightNormMean( Weight,Day3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%----Tables with outputs----%%%%%%%%%%%%%%%%%%%%%%%%%
table1 = table(SubjectID,maleIsoIndMeans,femaleIsoIndMeans, 'VariableNames', {'SubjectID' 'maleIsoIndMeans' 'femaleIsoIndMeans'});
table2 = table(day1toDay2, 'VariableNames', {'day1toDay2'});
table3 = table(day2toDay3, 'VariableNames', {'day2toDay3'});
table4 = table(maleGroupIsoMean,femaleGroupIsoMean,normDay1mean,normDay2mean,normDay3mean, 'VariableNames', {'maleGroupIsoMean' 'femaleGroupIsoMean' 'normDay1mean' 'normDay2mean' 'normDay3mean'});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%----Export tables to spreadsheet----%%%%%%%%%%%%%%%%%%%%%
writetable(table1,'iso_results.xlsx', 'Sheet',1)
writetable(table2,'iso_results.xlsx', 'Sheet',2)
writetable(table3,'iso_results.xlsx', 'Sheet',3)
writetable(table4,'iso_results.xlsx', 'Sheet',4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--END--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%