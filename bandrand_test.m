system("make")
system("./badrand 0 16384 200 > badrand_0_16384.dat")
X = load("badrand_0_16384.dat");

n = length(X);

lsb1 = zeros(1, n);
for i=1:n 
    lsb1(i) = bitand(X(i), 1);
end

lsb2 = zeros(1, n);
for i=1:n 
    lsb2(i) = bitand(X(i), 2);
end

lsb4 = zeros(1, n);
for i=1:n 
    lsb4(i) = bitand(X(i), 4);
end

lsb8 = zeros(1, n);
for i=1:n 
    lsb8(i) = bitand(X(i), 8);
end

subplot(6, 1, 1);
plot(X);
title('random output X in [0, 16384]')

subplot(6, 1, 2);
histogram(X);
title('histogram of X')

subplot(6, 1, 3);
plot(lsb1);
title('bit 1');

subplot(6, 1, 4);
plot(lsb2);
title('bit 2');

subplot(6, 1, 5);
plot(lsb4);
title('bit 4');

subplot(6, 1, 6);
plot(lsb8);
title('bit 8');