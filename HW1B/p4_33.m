% define individual numerator transfer functions
N1=tf(10,1);
N2=tf([1 5],1);
% define individual denominator transfer functions
D1=tf(1,[1 2]);
D2=tf(1,[1 8 32]);
% define total transfer function
G=N1*N2*D1*D1*D2;

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(1);
plot(T, Y);

% get response characterisitcs
S=stepinfo(G);

% generate bode plot with individual and total responses
figure(2);
bode(N1,N2,D1,D1,D2,G);
