function [X, w] = ctfs(x,T)
% CTFTS calculates the continuous-time Fourier transform (CTFT) of a
% periodic signal x(t) which is reconstructed from the samples in the
% vector x using ideal bandlimited interpolation. The vector x contains
% samples if x(t) over an integer number of periods, and T contains the
% sampling period.
%
% The vector X contains the area of the impulses at the frequency values
% stored in the vector w.
%
% This function makes use of the relationship between the CTFT of x(t) and
% the DTFT of its samples x[n], as well as the relationship between the
% DTFT of the samples x[n] and the DTFS of x[n].
N = length(x);
X = fftshift(fft(x,N))*(2*pi/N);
w = 2*pi*linspace(-1,1-1/N,N)/(2*T);