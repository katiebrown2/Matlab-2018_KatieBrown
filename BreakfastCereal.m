% BreakfastCereal
%
% Provides examples of fun things you can do wtih cereal boxes.
% 
% written KB 1/3/2018 for Matlab 2018

frosted = 'FROSTED FLAKES';
cheerios = 'CHEERIOS';

frosted_scrambled = frosted;

frosted_scrambled(9)='E';

disp(frosted_scrambled);

str4 = 'CHEERIOS'
str4(1)='O'
str4(5)='P'

str5 = 'CHEMISTRY'
str5(1)='O'
str5(8)='B'

disp(str4);
disp(str5);
frosted_scrambled([6 13])=['F' 'F']
disp(frosted_scrambled);
ff=find(frosted == 'F')
%single equal sets a variable; double equal is a check
%using variable frosted is equal to the FROSTED FLAKES
str='MACARONI AND CHEESE'
id1=[1 2 7 9 14 15 16 17 18 19]
str(id1)
id2=[15 16 5 9 1 8 7 12 9 8 18 9 14 15 8 7 16 18 16]
str(id2)
linspace(1,10,10)
vect1=1:10
linspace(10,18,5)
vect2=10:2:18
linspace(19,15,5)
vect3=19:-1:15
linspace(10,-4,8)
vect4=10:-2:-4
linspace(0,5*pi,6)
vect5=0:pi:5*pi
str='aaaaaaaaaaaaaaaaaaaa'
str(3:3:20)=['c']
str(2:3:20)=['b']
str([4:6 10:12)=['d' 'e' 'f' 'd' 'e' 'f']

