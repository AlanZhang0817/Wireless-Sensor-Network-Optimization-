function [ w ] = logistic_reg( X, y, w_init, max_its, eta )

numSamples = size(X,1);
w = w_init';

augmentedOnes = ones(numSamples, 1);
X = [augmentedOnes, X];


for t = 0 : max_its 
    
     sampleModifiedByY = (-y) .* X;
     denominatorEach = exp( y .* (X * w) ) + 1;
     currGradient = sum(sampleModifiedByY ./ denominatorEach);
     currGradient = currGradient' / numSamples;
      
     w = w - eta * currGradient; 
      
end

end

