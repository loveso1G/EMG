# Code for Noise Stress Test
rm(list=ls())
gc()

# install.packages("TSEntropies"); # run at first time
library(TSEntropies)
t1=Sys.time();print(t1);print(" start code");
# Data loading from database: https://archive.physionet.org/physiobank/database/nstdb/
# 118e00, name=A0, 118e12=A12; 118e_6=AN6;119e00=B0
# bw=BWa;em=EMo;ma=EMG;
#  only 1 min length,Fs=360Hz;
A0=read.table("A0.csv",sep=",");dim(A0);
A6=read.table("A6.csv",sep=",");dim(A6);
A12=read.table("A12.csv",sep=",");dim(A12);
A18=read.table("A18.csv",sep=",");dim(A18);
A24=read.table("A24.csv",sep=",");dim(A24);

BN6=read.table("BN6.csv",sep=",");dim(BN6);
B0=read.table("B0.csv",sep=",");dim(B0);
B6=read.table("B6.csv",sep=",");dim(B6);
B12=read.table("B12.csv",sep=",");dim(B12);
B18=read.table("B18.csv",sep=",");dim(B18);
B24=read.table("B24.csv",sep=",");dim(B24);

BWa=read.table("BWa.csv",sep=",");dim(BWa);
EMo=read.table("EMo.csv",sep=",");dim(EMo);
EMG=read.table("EMG.csv",sep=",");dim(EMG);

# 40 signals
# s1=EMG[,2]+A0[2];
s1.1.1=1*EMG[,2]+A0[,2];plot(s1.1.1,type="l");
s1.5.1=5*EMG[,2]+A0[,2];plot(s1.5.1,type="l");
s1.10.1=10*EMG[,2]+A0[,2];plot(s1.10.1,type="l");
s1.20.1=20*EMG[,2]+A0[,2];plot(s1.20.1,type="l");
#s2=EMG[,2]+BWa[2]
s2.1.1=1*EMG[,2]+BWa[,2];plot(s2.1.1,type="l");
s2.5.1=5*EMG[,2]+BWa[,2];plot(s2.5.1,type="l");
s2.10.1=10*EMG[,2]+BWa[,2];plot(s2.10.1,type="l");
s2.20.1=20*EMG[,2]+BWa[,2];plot(s2.20.1,type="l");
#s3=EMG[,2]+A0[2]+BWa;
s3.1.1.1=1*EMG[,2]++A0[,2]+BWa[,2];plot(s3.1.1.1,type="l");
s3.5.1.1=5*EMG[,2]++A0[,2]+BWa[,2];plot(s3.5.1.1,type="l");
s3.10.1.1=10*EMG[,2]++A0[,2]+BWa[,2];plot(s3.10.1.1,type="l");
s3.20.1.1=20*EMG[,2]++A0[,2]+BWa[,2];plot(s3.20.1.1,type="l");
# s4=EMG[,2]+B0[2];
s4.1.1=1*EMG[,2]+B0[,2];plot(s4.1.1,type="l");
s4.5.1=5*EMG[,2]+B0[,2];plot(s4.5.1,type="l");
s4.10.1=10*EMG[,2]+B0[,2];plot(s4.10.1,type="l");
s4.20.1=20*EMG[,2]+B0[,2];plot(s4.20.1,type="l");
# s5=EMG[,2]+B0[2]+BWa
s5.1.1.1=1*EMG[,2]++B0[,2]+BWa[,2];plot(s5.1.1.1,type="l");
s5.5.1.1=5*EMG[,2]++B0[,2]+BWa[,2];plot(s5.5.1.1,type="l");
s5.10.1.1=10*EMG[,2]++B0[,2]+BWa[,2];plot(s5.10.1.1,type="l");
s5.20.1.1=20*EMG[,2]++B0[,2]+BWa[,2];plot(s5.20.1.1,type="l");

# s6=EMG[,3]+A0[2];
s6.1.1=1*EMG[,3]+A0[,2];plot(s6.1.1,type="l");
s6.5.1=5*EMG[,3]+A0[,2];plot(s6.5.1,type="l");
s6.10.1=10*EMG[,3]+A0[,2];plot(s6.10.1,type="l");
s6.20.1=20*EMG[,3]+A0[,2];plot(s6.20.1,type="l");
#s7=EMG[,3]+BWa[2]
s7.1.1=1*EMG[,3]+BWa[,2];plot(s7.1.1,type="l");
s7.5.1=5*EMG[,3]+BWa[,2];plot(s7.5.1,type="l");
s7.10.1=10*EMG[,3]+BWa[,2];plot(s7.10.1,type="l");
s7.20.1=20*EMG[,3]+BWa[,2];plot(s7.20.1,type="l");
#s8=EMG[,3]+A0[2]+BWa;
s8.1.1.1=1*EMG[,3]+A0[,2]+BWa[,2];plot(s8.1.1.1,type="l");
s8.5.1.1=5*EMG[,3]+A0[,2]+BWa[,2];plot(s8.5.1.1,type="l");
s8.10.1.1=10*EMG[,3]+A0[,2]+BWa[,2];plot(s8.10.1.1,type="l");
s8.20.1.1=20*EMG[,3]+A0[,2]+BWa[,2];plot(s8.20.1.1,type="l");
# s9=EMG[,3]+B0[2];
s9.1.1=1*EMG[,3]+B0[,2];plot(s9.1.1,type="l");
s9.5.1=5*EMG[,3]+B0[,2];plot(s9.5.1,type="l");
s9.10.1=10*EMG[,3]+B0[,2];plot(s9.10.1,type="l");
s9.20.1=20*EMG[,3]+B0[,2];plot(s9.20.1,type="l");
# s5=EMG[,2]+B0[2]+BWa
s10.1.1.1=1*EMG[,3]++B0[,2]+BWa[,2];plot(s10.1.1.1,type="l");
s10.5.1.1=5*EMG[,3]++B0[,2]+BWa[,2];plot(s10.5.1.1,type="l");
s10.10.1.1=10*EMG[,3]++B0[,2]+BWa[,2];plot(s10.10.1.1,type="l");
s10.20.1.1=20*EMG[,3]++B0[,2]+BWa[,2];plot(s10.20.1.1,type="l");

## Approximate Entropy,  m?=?{2, 3, 4, 5}, r?=?{0.05,0.1,0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5} 
# https://jneuroengrehab.biomedcentral.com/articles/10.1186/s12984-018-0465-9


data1=s10.20.1.1; # 分別帶入40 signals
t1=Sys.time();print(t1)

app.2.1=ApEn(data1,dim = 2,lag = 1,r = 0.05); 
app.2.2=ApEn(data1,dim = 2,lag = 1,r = 0.1); 
app.2.3=ApEn(data1,dim = 2,lag = 1,r = 0.15); 
app.2.4=ApEn(data1,dim = 2,lag = 1,r = 0.2); 
app.2.5=ApEn(data1,dim = 2,lag = 1,r = 0.25); 
app.2.6=ApEn(data1,dim = 2,lag = 1,r = 0.3); 
app.2.7=ApEn(data1,dim = 2,lag = 1,r = 0.35); 
app.2.8=ApEn(data1,dim = 2,lag = 1,r = 0.4); 
app.2.9=ApEn(data1,dim = 2,lag = 1,r = 0.45); 
app.2.10=ApEn(data1,dim = 2,lag = 1,r = 0.5); 
app.m2=c(app.2.1,app.2.2,app.2.3,app.2.4,app.2.5,app.2.6,app.2.7,app.2.8,app.2.9,app.2.10);

app.3.1=ApEn(data1,dim = 3,lag = 1,r = 0.05); 
app.3.2=ApEn(data1,dim = 3,lag = 1,r = 0.1); 
app.3.3=ApEn(data1,dim = 3,lag = 1,r = 0.15); 
app.3.4=ApEn(data1,dim = 3,lag = 1,r = 0.2); 
app.3.5=ApEn(data1,dim = 3,lag = 1,r = 0.25); 
app.3.6=ApEn(data1,dim = 3,lag = 1,r = 0.3); 
app.3.7=ApEn(data1,dim = 3,lag = 1,r = 0.35); 
app.3.8=ApEn(data1,dim = 3,lag = 1,r = 0.4); 
app.3.9=ApEn(data1,dim = 3,lag = 1,r = 0.45); 
app.3.10=ApEn(data1,dim = 3,lag = 1,r = 0.5); 
app.m3=c(app.3.1,app.3.2,app.3.3,app.3.4,app.3.5,app.3.6,app.3.7,app.3.8,app.3.9,app.3.10);

app.4.1=ApEn(data1,dim = 4,lag = 1,r = 0.05); 
app.4.2=ApEn(data1,dim = 4,lag = 1,r = 0.1); 
app.4.3=ApEn(data1,dim = 4,lag = 1,r = 0.15); 
app.4.4=ApEn(data1,dim = 4,lag = 1,r = 0.2); 
app.4.5=ApEn(data1,dim = 4,lag = 1,r = 0.25); 
app.4.6=ApEn(data1,dim = 4,lag = 1,r = 0.3); 
app.4.7=ApEn(data1,dim = 4,lag = 1,r = 0.35); 
app.4.8=ApEn(data1,dim = 4,lag = 1,r = 0.4); 
app.4.9=ApEn(data1,dim = 4,lag = 1,r = 0.45); 
app.4.10=ApEn(data1,dim =4,lag = 1,r = 0.5); 
app.m4=c(app.4.1,app.4.2,app.4.3,app.4.4,app.4.5,app.4.6,app.4.7,app.4.8,app.4.9,app.4.10);

app.5.1=ApEn(data1,dim = 5,lag = 1,r = 0.05); 
app.5.2=ApEn(data1,dim = 5,lag = 1,r = 0.1); 
app.5.3=ApEn(data1,dim = 5,lag = 1,r = 0.15); 
app.5.4=ApEn(data1,dim = 5,lag = 1,r = 0.2); 
app.5.5=ApEn(data1,dim = 5,lag = 1,r = 0.25); 
app.5.6=ApEn(data1,dim = 5,lag = 1,r = 0.3); 
app.5.7=ApEn(data1,dim = 5,lag = 1,r = 0.35); 
app.5.8=ApEn(data1,dim = 5,lag = 1,r = 0.4); 
app.5.9=ApEn(data1,dim = 5,lag = 1,r = 0.45); 
app.5.10=ApEn(data1,dim =5,lag = 1,r = 0.5); 
app.m5=c(app.5.1,app.5.2,app.5.3,app.5.4,app.5.5,app.5.6,app.5.7,app.5.8,app.5.9,app.5.10);
result.app=c(app.m2,app.m3,app.m4,app.m5);

t1=Sys.time();print(t1); print("sample entropy start");
sap.2.1=SampEn(data1, dim = 2, lag = 1, r = 0.05);
sap.2.2=SampEn(data1, dim = 2, lag = 1, r = 0.1);
sap.2.3=SampEn(data1, dim = 2, lag = 1, r = 0.15);
sap.2.4=SampEn(data1, dim = 2, lag = 1, r = 0.2);
sap.2.5=SampEn(data1, dim = 2, lag = 1, r = 0.25);
sap.2.6=SampEn(data1, dim = 2, lag = 1, r = 0.3);
sap.2.7=SampEn(data1, dim = 2, lag = 1, r = 0.35);
sap.2.8=SampEn(data1, dim = 2, lag = 1, r = 0.4);
sap.2.9=SampEn(data1, dim = 2, lag = 1, r = 0.45);
sap.2.10=SampEn(data1,dim = 2, lag = 1, r = 0.5);
sap.m2=c(sap.2.1,sap.2.2,sap.2.3,sap.2.4,sap.2.5,sap.2.6,sap.2.7,sap.2.8,sap.2.9,sap.2.10);

sap.3.1=SampEn(data1, dim = 3, lag = 1, r = 0.05);
sap.3.2=SampEn(data1, dim = 3, lag = 1, r = 0.1);
sap.3.3=SampEn(data1, dim = 3, lag = 1, r = 0.15);
sap.3.4=SampEn(data1, dim = 3, lag = 1, r = 0.2);
sap.3.5=SampEn(data1, dim = 3, lag = 1, r = 0.25);
sap.3.6=SampEn(data1, dim = 3, lag = 1, r = 0.3);
sap.3.7=SampEn(data1, dim = 3, lag = 1, r = 0.35);
sap.3.8=SampEn(data1, dim = 3, lag = 1, r = 0.4);
sap.3.9=SampEn(data1, dim = 3, lag = 1, r = 0.45);
sap.3.10=SampEn(data1,dim = 3, lag = 1, r = 0.5);
sap.m3=c(sap.3.1,sap.3.2,sap.3.3,sap.3.4,sap.3.5,sap.3.6,sap.3.7,sap.3.8,sap.3.9,sap.3.10);

sap.4.1=SampEn(data1, dim = 4, lag = 1, r = 0.05);
sap.4.2=SampEn(data1, dim = 4, lag = 1, r = 0.1);
sap.4.3=SampEn(data1, dim = 4, lag = 1, r = 0.15);
sap.4.4=SampEn(data1, dim = 4, lag = 1, r = 0.2);
sap.4.5=SampEn(data1, dim = 4, lag = 1, r = 0.25);
sap.4.6=SampEn(data1, dim = 4, lag = 1, r = 0.3);
sap.4.7=SampEn(data1, dim = 4, lag = 1, r = 0.35);
sap.4.8=SampEn(data1, dim = 4, lag = 1, r = 0.4);
sap.4.9=SampEn(data1, dim = 4, lag = 1, r = 0.45);
sap.4.10=SampEn(data1,dim = 4, lag = 1, r = 0.5);
sap.m4=c(sap.4.1,sap.4.2,sap.4.3,sap.4.4,sap.4.5,sap.4.6,sap.4.7,sap.4.8,sap.4.9,sap.4.10);

sap.5.1=SampEn(data1, dim = 5, lag = 1, r = 0.05);
sap.5.2=SampEn(data1, dim = 5, lag = 1, r = 0.1);
sap.5.3=SampEn(data1, dim = 5, lag = 1, r = 0.15);
sap.5.4=SampEn(data1, dim = 5, lag = 1, r = 0.2);
sap.5.5=SampEn(data1, dim = 5, lag = 1, r = 0.25);
sap.5.6=SampEn(data1, dim = 5, lag = 1, r = 0.3);
sap.5.7=SampEn(data1, dim = 5, lag = 1, r = 0.35);
sap.5.8=SampEn(data1, dim = 5, lag = 1, r = 0.4);
sap.5.9=SampEn(data1, dim = 5, lag = 1, r = 0.45);
sap.5.10=SampEn(data1,dim = 5, lag = 1, r = 0.5);
sap.m5=c(sap.5.1,sap.5.2,sap.5.3,sap.5.4,sap.5.5,sap.5.6,sap.5.7,sap.5.8,sap.5.9,sap.5.10);
result.sap=c(sap.m2,sap.m3,sap.m4,sap.m5);

t1=Sys.time();print(t1);print(" end code");
result.all=c(result.app, result.sap)
write.csv(result.all, file = "s10.20.1.1.csv")  

# figure-1: 固定 EMG+A0[2],SNR。x-axis:r; y-axis:entropy, 不同的m,劃出4條線。 
# Figure-2: 固定EMG+A0[2]+ BWa;。x-axis:r; y-axis:entropy, 不同的m,劃出4條線。
# Figure-3: 固定EMG+A0[2]+ BWa;。固定 m,r。x-axis:SNR; y-axis:entropy,表示出SNR 差異造成的變化
# Figure-4: 固定weight*(0.5)EMG+A0[2]+ BWa;。固定 m,r。x-axis:SNR; y-axis:entropy,表示出weighting 差異造成的變化
# Table: Appendix table 的變化，以統計表顯示- mean, std, ANOVA test.