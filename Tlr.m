function [T] = Tlr(X,Y)
disp('����� ���������� � ��� �������:');
syms x;
syms f(x);
K = [1 ; -1; 0; 1/3; -1/12; -1/20; 1/45];
disp('���������� ������� �� ������� ������� � ����������� ����� 0 � ��������� �� ������ ���������� ����������:');
f = x.^(0:6) * K;
disp(f);
for i = 1:5
    T = subs(f, x, X(1:5));
end
Z = abs(Y - T);
disp(' �����    ������������ ��������     ���������� �����������');
for i = 1:5
    fprintf('%6.1f        %6.8f             %1.12f\n', X(i), T(i), Z(i));
end
fprintf('\n')
end

