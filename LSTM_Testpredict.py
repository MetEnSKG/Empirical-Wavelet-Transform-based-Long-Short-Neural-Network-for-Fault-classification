# Import the libraries to be used in the program
import numpy as np
import scipy.io as sci
from keras.utils import plot_model
from scipy.io import loadmat
from keras.models import Sequential
from keras.layers import Input, Dense, LSTM, GRU
from keras.layers import Dropout, concatenate
from sklearn import datasets, metrics
from keras.models import load_model
from sklearn.metrics import classification_report, confusion_matrix 

trainx=loadmat('TestX_IM.mat')
x_tr=trainx['TestX_IM']
x_train=x_tr[:,0,:]
seqtrainx=loadmat('SeqTest_IM.mat')
seq_train=seqtrainx['SeqTest_IM']
trainy=loadmat('Test2Y_IM.mat')
y_train=trainy['TestY_IM']

testx=loadmat('TestX_GT.mat')
x_ts=testx['TestX_GT']
x_test=x_ts[:,0,:]
seqtestx=loadmat('SeqTest_GT.mat')
seq_test=seqtestx['SeqTest_GT']
testy=loadmat('Test2Y_GT.mat')
y_test=testy['TestY_GT']
del model
model = load_model('LSTM_class.h5')

FC_GT=model.predict([seq_test, x_test]) 

sci.savemat('D:\FIPS\Data For python\Fault Classification\Training and testing Data\FC_GT.mat', mdict={'FC_GT': FC_GT})


del model
model = load_model('LSTM_class.h5')

FC_IM=model.predict([seq_train, x_train]) 

sci.savemat('D:\FIPS\Data For python\Fault Classification\Training and testing Data\FC_IM.mat', mdict={'FC_IM': FC_IM})
