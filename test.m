fileName = 'Training Set.csv';
[X, y, w_init, ~] = parseFile(fileName);

max_its = 1000000;
eta = 10^(-5);
disp("iteration num: " + max_its);
disp("eta: " + eta);

[ w_learned ] = logistic_reg( X, y, w_init, max_its, eta);
disp(w_learned)
fileName = 'data.csv';
X = csvread(fileName, 0, 0);
results = zeros(size(X, 1), 1);

for each = 1 : size(X,1)
   
   results(each) = trans(w_learned, X(each, :));
    
end

disp(results);
csvwrite('Probability.csv',results)

function [ result ] = trans(w, x)

x = [1, x];
result = 1 / (1 + exp(-(x*w)));

end
