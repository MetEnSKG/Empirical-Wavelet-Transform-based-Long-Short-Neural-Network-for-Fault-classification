clc 
clear all
%{
load('TrainY.mat')
load('TrainY.mat')
for i=1:lenIMh(TrainY)
    if TrainY(i,1)==0
        YTrain(i,:)=[0 0 1];
    end
    if TrainY(i,1)==1
        YTrain(i,:)=[0 1 0];
    end
    if TrainY(i,1)==2
        YTrain(i,:)=[1 0 0];
    end
end
clear TrainY
TrainY=YTrain;
for i=1:lenIMh(TrainY)
    if TrainY(i,1)==0
        TrainY(i,:)=[0 0 1];
    end
    if TrainY(i,1)==1
        TrainY(i,:)=[0 1 0];
    end
    if TrainY(i,1)==2
        TrainY(i,:)=[1 0 0];
    end
end
clear TrainY
TrainY=TrainY;
save('Train2Y.mat','TrainY')
save('Train2Y.mat','TrainY')
%}
%%{
load('D:\FIPS\Data For python\Fault Classification\DL-1\TrainY.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-1\TrainX.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-1\SeqTrain.mat')
XDL1=TrainX;
seqDL1=SeqTrain;
YDL1=TrainY;

clear TrainX TrainY SeqTrain
load('D:\FIPS\Data For python\Fault Classification\DL-2\TrainY.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-2\TrainX.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-2\SeqTrain.mat')
XDL2=TrainX;
seqDL2=SeqTrain;
YDL2=TrainY;


clear TrainX TrainY SeqTrain
load('D:\FIPS\Data For python\Fault Classification\DL-3\TrainY.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-3\TrainX.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-3\SeqTrain.mat')
XDL3=TrainX;
seqDL3=SeqTrain;
YDL3=TrainY;


clear TrainX TrainY SeqTrain
load('D:\FIPS\Data For python\Fault Classification\DL-4\TrainY.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-4\TrainX.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-4\SeqTrain.mat')
XDL4=TrainX;
seqDL4=SeqTrain;
YDL4=TrainY;


clear TrainX TrainY SeqTrain
load('D:\FIPS\Data For python\Fault Classification\DL-5\TrainY.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-5\TrainX.mat')
load('D:\FIPS\Data For python\Fault Classification\DL-5\SeqTrain.mat')
XDL5=TrainX;
seqDL5=SeqTrain;
YDL5=TrainY;

clear TrainX TrainY SeqTrain
TrainX=[XDL1;XDL2;XDL3;XDL4;XDL5];
TrainY=[YDL1;YDL2;YDL3;YDL4;YDL5];
SeqTrain=[seqDL1;seqDL2;seqDL3;seqDL4;seqDL5];

save('TrainX.mat','TrainX')
save('TrainY.mat','TrainY')
save('SeqTrain.mat','SeqTrain')
%}