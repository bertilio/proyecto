clear all;
close all;
load datos_entrenamiento training

train_w = training(:,[1,2,3,4,8]);
indices = round(linspace(1,size(training,1),1500));
train_w = train_w(indices,:);
train_w(isinf(train_w)) = 5.0;
train_w = double(train_w);

train_v = training(:,[2,3,9]);
indices = round(linspace(1,size(training,1),1500));
train_v = train_v(indices,:);
train_v(isinf(train_v)) = 5.0;
train_v = double(train_v);

train_v(1,3) = 0.9999;
