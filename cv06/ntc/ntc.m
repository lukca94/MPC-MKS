close all;
clc;

values = csvread("ntc.csv");


temp = values(:,1);
r = values(:,2)*1000;

adc = r./(r+10000)*1023;

plot(adc,temp,"b");

p = polyfit(adc,temp, 10);
adc2 = 0:1023;
temp2 = round(polyval(p,adc2),1);
hold on
plot(ad2,temp2,"or")
dlmwrite('data.dlm', temp2*10, ',');