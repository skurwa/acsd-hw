% define individual denominator transfer functions
D1 = tf(1,[1 10]);
D2 = tf(1, [1 4 10]);

% define total transfer function
G = D1 * D2;

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(1);
plot(T, Y);
xlabel("time (t)");
ylabel("c(t)");
title("step response for K = 1");

% get response characterisitcs
S = stepinfo(G);