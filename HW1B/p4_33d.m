% without pole-zero cancellation
% define individual numerator transfer functions
N1 = tf([1 2.01],1);

% define individual denominator transfer functions
D1 = tf(1,[1 2]);
D2 = tf(1, [1 5 13.75]);

% define total transfer function
G = N1 * D1 * D2;

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(1);
plot(T, Y);
xlabel("time (t)");
ylabel("c(t)");
title("step response without pole-zero cancellation");

% get response characterisitcs
Swithout = stepinfo(G);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% with pole-zero cancellation
% define total transfer function
G = D2;

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(2);
plot(T, Y);
xlabel("time (t)");
ylabel("c(t)");
title("step response with pole-zero cancellation");

% get response characterisitcs
Swith = stepinfo(G);