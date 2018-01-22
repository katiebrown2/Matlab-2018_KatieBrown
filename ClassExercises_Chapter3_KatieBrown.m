% Katie Brown
% Ch 3 in-class exercises 

%3.1
mat=[1 2 3 4; 4 5 6 7 ; 8 9 10 11];
size(mat)

mat+1

10-mat

min(mat)

min(mat')

min(min(mat))

%3.2
v1=[1 2 3 4];
v2=[1 0 1 0];

v1+v2

v1.*v2

sum(v1.*v2)

v1*v2'

%3.3
sum(1:2:99)

%3.4
vecta=[1:10000];
vectb=vecta.^2;
vectc=6./vectb;
d=sum(vectc);
disp(sqrt(d));
% OR:
sqrt(sum(6./(([1:10000]).^2)))

%3.5
heights=[66 68 65 70 65]';

avg=(sum(heights)/5)

mean(heights)

w=[1 1 1 1 1]/5;
w*heights

w=[1 1 1 0 1]/4;
w*heights
mean(heights([1 2 3 5]))


