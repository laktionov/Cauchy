function main2
disp('��������� ������� ������ ���� ��� ������������� ����������������� ��������� ������� �������:');
disp("y' = -y(1 + x), y(0) = 1");
disp('y = exp(-(x + x^2 /2)) - ������������� ������� ������ ����');
syms x;
syms y(x);
syms f(x,y);
y(x) = exp(-(x + x^2 /2));
h = input('���: ');
N = input('����� �����: ');
X = h.*(-2 : 1 : N);
Y = y(X);
disp(' �����    ������ ��������');
for i = 1 : N + 3
    fprintf('%6.1f     %6.8f\n', X(i), Y(i));
end
fprintf('\n')
T = Tlr(X(1 : 5), Y(1 : 5));
Adm(X, Y(6 : N+3), Y(1:5), N, h);
RK(X(3 : N+3), Y(3 : N+3), N, h);
Elr(X(3 : N+3), Y(3 : N+3), N, h);
end

