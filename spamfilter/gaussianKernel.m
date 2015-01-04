function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

x1 = x1(:); x2 = x2(:);
sim = 0;
sim=(x1-x2)'*(x1-x2);
sim=sim/(2*sigma*sigma);
sim=exp(-1*sim);
end
