clc;
clear all;


y=input('enter matrix as (x,y) : ');
z=input('value of x to be find');
y
z
[m n]=size(y);
b=zeros(m,m+1)

for i=1:m
    b(i,2)=y(i,2);
    b(i,1)=y(i,1);
end
b
k=m-1;
id=0;
    for i=3:m+1
        for j=1:k
            b(j,i)=(b(j+1,i-1)-b(j,i-1));
        end
        k=k-1;
    end
b  
w=b(m,2);
ml=0;
p=(z-b(m,1))/(b(2,1)-b(1,1));
v=p;
p
u=1;
t=m-1;
for i=3:m+1
    v=1;    
    for j=0:ml
        v=v*(p+j);
        
    end
        for j=1:(ml+1)
            u=u*j;
        end
        
    ml=ml+1;
    w=w+((b(t,i)*v)/u);
    u=1;
    v=1;
    t=t-1;
end
w