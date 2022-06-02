close all; clear all; cl

%% ��������
Z_max = 4; T_max = 10;
dz = 0.001; dt = 0.1; lambda = dz/dt^2/2;
z = [0:dz:Z_max]; t = [-T_max:dt:T_max];
[T, Z] = meshgrid(t, z);
N_t = length(t); N_z = length(z);

%% ��־���
e = ones(N_t, 1);
A = spdiags([lambda/2*e (1i-lambda)*e lambda/2*e], [-1, 0, 1], N_t, N_t);
A(1, N_t) = lambda/2; A(N_t, 1) = lambda/2;
B = spdiags([-lambda/2*e (1i+lambda)*e -lambda/2*e], [-1, 0, 1], N_t, N_t);
B(1, N_t) = -lambda/2; B(N_t, 1) = -lambda/2;
A_i = inv(A);

%% �߽�����
u = sech(t)'; U(1,:) = abs(u)';

%% ������
for m = 2:N_z
    F = B*u-dz*abs(u).^2.*u;
    u = A_i*F;
    U(m,:) = abs(u)';
    m
end

%% ���ӻ�
figure
surf(T, Z, U)
xlabel('ʱ�� T/T_0'), ylabel('������� z/L_D'), zlabel('ǿ��')
view(-20,70)
axis([-inf inf 0 4 0 inf]),
shading interp
colormap(gca, 'jet');

figure
surf(T, Z, U)
xlabel('ʱ�� T/T_0'), ylabel('������� z/L_D'), zlabel('ǿ��')
view(0,90)
axis([-inf inf 0 4 0 inf]),
shading interp
colormap(gca, 'jet');