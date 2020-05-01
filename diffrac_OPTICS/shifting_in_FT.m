close all
clear all
% code for understanding for matlab uses fft
fs = 100;               % sampling frequency
fq = 15;
a  = 1;
N  = 100;
t0 = 50;
t  = 0:(1/fs):(N); % time vector
n  = length(t);
%S  = cos(2*pi*fq*t);
S  = exp(-pi*a*(t-t0).^2);
X  = fft(S);
f  = (0:n-1)*(fs/n);     %frequency range
power = abs(X)/n;    %power
plot(t,S)
Y = fftshift(X);
fshift = (-n/2:n/2-1)*(fs/n); % zero-centered frequency range
powershift = abs(Y)/n;     % zero-centered power
figure;
plot(fshift,powershift)