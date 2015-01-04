function [C, sigma] = dataset3Params(X, y, Xval, yval)

C = 1;
sigma = 0.3;
c=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
min=100000;
temp_min=0;
sigma_a=[0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
min_err = 1;
for i=1:8,
    for j=1:8,
        model = svmTrain(X, y, c(i), @(x1, x2) gaussianKernel(x1, x2, sigma_a(j)));
        predictions = svmPredict(model, Xval);
        temp_min = mean(double(predictions ~= yval));
        if (temp_min < min),
            C = c(i);
            sigma = sigma_a(j);
            min = temp_min;
        end
    end
end

end
