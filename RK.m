function RK (X, Y, N, h)
disp('Метод Рунге - Кутта 4 - го порядка:');
syms x;
syms y;
syms f(x,y);
f(x, y) = -y*(1+x);
K = zeros(4, 1);
F = zeros(N + 1, 1);
F(1, 1) = 1;
for k = 2 : N + 1
    K(1,1) = h * f(X(k-1), F(k-1));
    K(2, 1) = h * f(X(k-1) + h/2, F(k-1) + K(1, 1)/2);
    K(3, 1) = h * f(X(k-1) + h/2, F(k-1) + K(2, 1)/2);
    K(4, 1) = h * f(X(k-1) + h, F(k-1) + K(3, 1));
    F(k, 1) = F(k-1, 1) + ([1 2 2 1] * K) / 6;
end
Z = abs(F(2 : N+1, 1)' - Y(2:N+1));
disp(' Точки    Приближенные значения     Абсолютная погрешность');
for i = 2 : N + 1
    fprintf('%6.1f        %6.8f             %6.12f\n', X(i), F(i, 1), Z(i-1));
end
fprintf('\n')
end 

