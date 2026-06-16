%% init_SECP_MPPT.m
% SECP-MPPT 参数初始化文件
% 用于 Continuous powergui 下的离散 MPPT 控制器

clearvars -except out
clc

%% 控制器采样时间
% powergui 可以保持 Continuous，但 MPPT 控制器应该离散更新
Ts_mppt = 1e-4;          % MPPT采样时间，建议 1e-4 ~ 1e-3

%% 占空比参数
D0    = 0.50;            % 初始占空比
Dmin  = 0.15;            % 占空比下限
Dmax  = 0.85;            % 占空比上限

%% 扰动步长参数
dD_base = 0.002;         % 基础扰动步长
dD_min  = 0.0005;        % 最小扰动步长
dD_max  = 0.010;         % 最大扰动步长

%% 曲线特征计算参数
Nwin = 8;                % 滑动窗口长度
epsV = 1e-3;             % 防止除以0
epsP = 1e-6;             % 防止功率除以0

%% 遮阴判断阈值
Hs_th_low  = 0.15;       % 遮阴熵低阈值
Hs_th_high = 0.35;       % 遮阴熵高阈值

slope_th = 1e-3;         % 斜率接近0的阈值
curv_th  = 1e-3;         % 曲率阈值

%% 步长调节系数
k_slope = 0.5;           % 斜率影响系数
k_curv  = 0.5;           % 曲率影响系数
k_Hs    = 1.0;           % 遮阴熵影响系数

%% 复位信号
reset_mppt = 0;

disp('SECP-MPPT initialization finished.')