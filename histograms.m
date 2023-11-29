clc
clear
close all

% TEAM I (COMPRESSION)
% 
% Paolo          (1-3)
% Federico       (4-6)
% Marianna       (7-9)
% Flavio         (10-12)
% Giovanni       (13-15)
% Samuele        (16-18)
% Maedeh         (19-21)
% AMIN           (22-24)
% Amir           (25-27)

%% vectors

%index and total scores (see table)
% 1       18
% 27      9
% 2       14
% 6       9
% 9       25
% 5       37
% 17      34
% 22      43
% 8       35
% 23      25
% 3       11
% 16      42
% 13      38
% 15      16
% 19      45
% 18      15
% 12      25
% 10      35
% 4       37
% 20      26
% 7       40
% 14      30
% 25      32
% 11      27
% 24      9
% 21      9
% 26      16

original=[18 37 40 35 38 42 45 43 32]'/9;     %index 1,4,7...
medium=[14 37 35 27 30 34 26 25 16]'/9;       %index 2,5,...
low=[11 9 25 25 16 15 9 9 9]'/9;              %index 3,6...

%% histograms

%all together
figure;
subplot(1,3,1);
stem(original,'filled', 'LineWidth',3);
xlim([0 10]);                               %maintaining the same scale
ylim([0 5]);
xticks(0:10);                               %otherwise on the x axis shows only 2-4-6...
title('original');
grid on
subplot(1,3,2);
stem(medium,'filled', 'LineWidth',3);
xlim([0 10]);
ylim([0 5]);
xticks(0:10);
title('medium');
grid on
subplot(1,3,3);
stem(low,'filled', 'LineWidth',3);
xlim([0 10]);
ylim([0 5]);
xticks(0:10);
title('low');
grid on

% Create the final histogram

l_tot = sum(low)/length(low);
m_tot = sum(medium)/length(medium);
o_tot = sum(original)/length(original);
counts = [o_tot,m_tot,l_tot];

%variances
l_var=var(low);
m_var=var(medium);
o_var=var(original);

figure;
histogram('Categories',{'Original','Medium','Low'}, 'BinCounts',counts)
title(sprintf('Original: m=%.2f var=%.2f \n Medium: m=%.2f var=%.2f \n Low: m=%.2f var=%.2f ',o_tot,o_var,m_tot,m_var,l_tot,l_var));