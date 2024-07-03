clc 
clear all
load('FC_GT.mat')
load('Test2Y_IM.mat')
load('FC_IM.mat')
load('Test2Y_GT.mat')

for i=1:length(FC_IM)
    for j=1:6
        if FC_IM(i,j)>=0.85
        YTest_IM(i,j)=1;
        else
        YTest_IM(i,j)=0;
        end
    end
end
Yac_IM=vec2ind(TestY_IM');
Yprid_IM=vec2ind(YTest_IM');
    
for i=1:length(FC_GT)
    for j=1:6
        if FC_GT(i,j)>=0.85
        YTest_GT(i,j)=1;
        else
        YTest_GT(i,j)=0;
        end
    end
end
Yac_GT=vec2ind(TestY_GT');
Yprid_GT=vec2ind(YTest_GT');

A_IM=categorical(Yac_IM);
P_IM=categorical(Yprid_IM);

A_GT=categorical(Yac_GT);
P_GT=categorical(Yprid_GT);

figure(1)
plotconfusion(A_IM,P_IM, 'IM')
figure(2)
plotconfusion(A_GT,P_GT, 'GT')