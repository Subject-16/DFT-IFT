clc
clear
close all
% script for clearing out any doubt with fourier transforms
Dx = 0.001;
x  = 0:Dx:1;
N  = length(x);
f  = sin(2*pi*5*x);
k  = (-N/2:N/2-1)/(N*Dx);
F  = (fft(f));
F1 = fftshift(F);
plot(k,abs(F1).^2)

f1 = (ifft(F));
figure
plot(x,(f1),'*')

figure
plot(x,f)