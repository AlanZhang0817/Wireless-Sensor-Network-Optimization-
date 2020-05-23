function [X, y, w_init, M_yOriginal] = parseFile(fileName)

M = csvread(fileName, 0, 0);
M_yOriginal = M(:, end);

numSample = size(M,1);
numColumn = size(M,2);

for index = 1 : numSample
    
   if M(index, numColumn) == 0
       M(index, numColumn) = -1;
   end
    
end

w_init = zeros(1,numColumn);
X = M(: , 1 : numColumn - 1);
y = M(:, end);


end