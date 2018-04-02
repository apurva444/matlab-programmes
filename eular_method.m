% clc;
% clear all;

f= inline('(-2.2067*(10^(-12)))*((y^4)-(81*(10^8)))','x','y'); 

x= 0; 
y= 1200;
h= 120;

A= 480-h;

for x= 0: h: A
    y= y + (f(x,y))*h;
end
y
