%% Class exercises Ch 4
% Katie Brown
%%
%4.1
A= ones(5,5);
A(3:5,1:5)=2

B=ones(4,5);
B(1:4,3:4)=0

C=ones(6,5);
C(2:4,2:3)=0

D=zeros(5,5);
for iRow=1:5
    D(:,iRow)=[1 2 3 4 5];
end
D

E=ones(6,6);
for iRow=1:6
    for jCol=1:6
        if iRow<=jCol
            E(iRow,jCol)=2;
        end
    end
end
E

F=ones(5);
for iRow=1:5
    F(:,iRow)=(iRow-1)*5;
end
F

G=[1:25];
G=reshape(G,[5,5])

H= ones(8,8);
H(1:8,2:2:8)=0

I= zeros(8,8);
for iRow=1:2:8
    for jCol=1:2:8
        if iRow==jCol
            I(iRow, jCol)=1;
        end
    end
end
I

J=ones(5);
for iRow=1:5
    J(:,iRow)=[0 1 2 3 4]+(iRow-1);
end
J

for iRow=1:5
    K(iRow,:)=iRow:iRow:5*iRow;
end
K

for iRow=1:5
    L(iRow,:)=[1:5]+((iRow-1)*5);
end
L

%% 4.2
M=zeros(3,3,3);
M(2,2,2)=1


M=zeros(5,5,5);
M(2:4, 2:4,2:4)=1

%% 4.3
sub2ind([4,3],3,2)

[i,j]=ind2sub([4,3],7)

%% 4.4
x=1;
y=2;
z=0;

if x>0
    disp('x is positive')
elseif x<0
    disp('x is negative')
end


x<2 || x>pi


(x>2 && y<4) || z==0


%% 4.5
count=1;
roll=ceil(rand(1,2)*6);
while sum(roll)>2
    count=count+1;
    roll=ceil(rand(1,2)*6);
end
disp(['Snake eyes after ', num2str(count), ' rolls']);
