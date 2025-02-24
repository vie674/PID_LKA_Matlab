A = [0  1    0   0 ;
     0 -9.89 0  -5.7;
     0  0    0   1;
     0  3.41 0   -11.96];  % Ma trận 4x4
B = [0    0;
     74.1 133.95;
     0    0     ;
     48.9 -11.9];  % Ma trận 4x2  (cột 1 là B_{delta_f}, cột 2 là B_{psi_des})

Ts = 0.1;  % chu kỳ lấy mẫu 10ms (ví dụ)
C = eye(4); % nếu chỉ cần theo dõi toàn bộ trạng thái
D = zeros(4,2);

sys_c = ss(A,B,C,D);           % tạo mô hình trạng thái liên tục
sys_d = c2d(sys_c, Ts, 'zoh'); % chuyển sang mô hình rời rạc

A_d = sys_d.A;
B_d = sys_d.B;
