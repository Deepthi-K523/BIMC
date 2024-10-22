% Commented portions represent code corresponding to Drug-miRNA associations

clc;clear;

[x,y,MiDi]=xlsread(['........\6082 Mi-di associations names.xlsx']);
[diseaseNo,disName,~]=xlsread(['...............Disease names.xlsx']);
[miRNAno,miRNAname,~]=xlsread(['................\MiRNA names.csv']);

%[x,y,DrMi]=xlsread(['.......\630 dr-mi associations-names.xlsx']);
%[drugNo,drugID,~]=xlsread(['.................\Drug names.csv']);


%DrMitxt=zeros(630,2);
MiDitxt=zeros(6082,2);


for i=1:6082
  for j=1:540
          
         if strcmp(MiDi(i,1),miRNAname(j,1))  
            MiDitxt(i,1)=miRNAno(j,1);
               
         end

    end
end



%for i=1:630
 %  for j=1:831
  %      if strcmp(DrMi(i,1),drugID(j,1))
   %         DrMitxt(i,1)=drugNo(j,1);
               
    %    end

    %end
%end


for i=1:6082
   for j=1:341
        if strcmp(MiDi(i,2),disName(j,1))
         MiDitxt(i,2)=miRNAno(j,1);
              
       end

    end
end


%for i=1:630
 %  for j=1:540
  %      if strcmp(DrMi(i,2),miRNAname(j,1))
   %         DrMitxt(i,2)=drugNo(j,1);
               
    %    end

    %end
%en


xlswrite('C...........\6082 Mi-Di associations numbers.xlsx',MiDitxt);
%xlswrite('..........\630 Dr-Mi numbers.xlsx',DrMitxt);

