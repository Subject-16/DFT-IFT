% takes input x as a column vector with N number of discreet values and perforrms
% dft
function [y] = dft_1d(x)

N = length(x);
k = 0:1:N-1;
n = 0:1:N-1;% vectors to be used to generate matrix
M = exp(-i*2*pi*k'*n/N);

y = M*x;

end


