K = 1;

% define total transfer function
G = tf((5*K), [1 5 11 15 (5*K)]);

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(1);
plot(T, Y);
xlabel("time (t)");
ylabel("c(t)");
title("step response for K = 1");

% get response characterisitcs
S_1 = stepinfo(G);

K = 2;

% define total transfer function
G = tf((5*K), [1 5 11 15 (5*K)]);

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(2);
plot(T, Y);
xlabel("time (t)");
ylabel("c(t)");
title("step response for K = 2");

% get response characterisitcs
S_2 = stepinfo(G);

K = 5;

% define total transfer function
G = tf((5*K), [1 5 11 15 (5*K)]);

% evaluate transfer function for unit step response
[Y, T] = step(G);
figure(3);
plot(T, Y);
xlabel("time (t)");
ylabel("c(t)");
title("step response for K = 5");

% get response characterisitcs
S_5 = stepinfo(G);