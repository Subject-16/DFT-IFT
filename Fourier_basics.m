clc
clear
close all
% script for clearing out any doubt with fourier transforms
Dx = 0.001;% del
x  = 0:Dx:1;% Dx specifies the frequencies that can be calculated with this FT
N  = length(x);
f  = sin(2*pi*5*x);
figure
plot(x,f)
title('original')


k  = (-N/2:N/2-1)/(N*Dx);
F1 = fft(f);
F  = fftshift(F1);
figure
plot(k,abs(F).^2)
title('Fourier spectrum')

f1 = (ifft(F1));
figure
plot(x,(f1))
title('Back tranformed')
ylim([-1,1])
