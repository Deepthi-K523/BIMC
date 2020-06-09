clc;clear;clear all;
%str = load(['..................\6082 Mi-Di associations numbers.txt']);
str = load(['...............\630 Dr-Mi numbers.txt']);


%nm = max(str(:,1));  % Number of miRNAs
%nd = max(str(:,2));  % Number of diseases


[pp,~] = size(str);

% pp:the number of known drug-miRNA associations


%ndr = max(str(:,1));
%nm = max(str(:,2));
ndr=831;  %Number of drugs
nm=540;   % Number of miRNAs    

interaction = zeros(ndr,nm); % Drug-miRNA association matrix



for i = 1:pp
   interaction(str(i,1),str(i,2)) = 1;

end

xlswrite('.....................\Drug-MiRNA association matrix (831x540).xlsx',interaction);

%xlswrite('.....................\Mi-Di association matrix (540x341).xlsx',interaction);






