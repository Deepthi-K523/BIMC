clc;clear;clear all;
str = load(['..................\6082 Mi-Di associations numbers.txt']);
%str = load(['...............\630 Dr-Mi numbers.txt']);


[pp,~] = size(str);  % pp:the number of known miRNA-disease associations


nm = max(str(:,1));  % Number of miRNAs
nd = max(str(:,2));  % Number of diseases
    

interaction = zeros(nm, nd);  % miRNA-disease association matrix



for i = 1:pp
   interaction(str(i,1),str(i,2)) = 1;

end


xlswrite('.....................\Mi-Di association matrix (540x341).xlsx',interaction);

%xlswrite('.....................\Drug-MiRNA association matrix (831x540).xlsx',interaction);






