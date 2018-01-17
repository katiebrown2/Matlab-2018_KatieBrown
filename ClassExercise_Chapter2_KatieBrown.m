%Chapter 2 class exercises
%Katie Brown 

%2.1
str='CHEERIOS';
str(1)='O'
str(5)='P'

str2='CHEMISTRY';
str2([1 8])='OB'

str3='MACARONI AND CHEESE';
str3([3 8 14])='ORO'

%2.2
str='MACARONI AND CHEESE'
id1=[1 2 7 9 14:19];
str(id1)

id2=[15 16 5 9 1 8 7 12 9 8 18 9 14 15 8 7 17 18 17];
str(id2)

%2.3
linspace(1,10,10)
[1:10]

linspace(10,18,5)
[10:2:18]

linspace(19,15,5)
[19:-1:15]

linspace(10,-4,8)
[10:-2:-4]

linspace(0,15.7080,6)
[0:3.1416:15.7080]

linspace(0,5*pi,6)
[0:pi:5*pi]

%2.4
str='aaaaaaaaaaaaaaaaaaaa'
str(3:3:end)='c'
str(2:3:end)='b'
str(3)
str([4:6 10:12 16:18])='defdefdef'
str([6 12 18])

%2.5
timepts=12:1.23:1000;
timepts=timepts(1:40)
timepts(5)
timepts(end)

%2.6
resp='rererererererererererererererererererere';
resp(5)='k'
disp(resp(5))
resp(5)='r'
disp(resp([2:2:end]))

%2.7
vect=3:10
vect(5:-1:2)
vect(vect(1:3))
vect=12:-1:1
vect(1:12)
vect(12:-1:1)
vect([10 12 9 12 8 4])
vect(1:2)
vect(vect(1:2))
vect(vect)
vect(vect(vect))