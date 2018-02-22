% Ch 5 in-class exercises
% Katie Brown

%% 5.1

%a
M=ones(6,6);
for i=1:6
    for j=1:6
        if i<=j
            M(i,j)=2;
        end
    end
end
M

%% b
cmap=[1 0 0; 0 1 0];
figure(1)
clf
image(M)
colormap(cmap)
axis equal
axis off

%% c
N=ones(6,6);
for i=1:6
    for j=1:6
        if round((i+j)/2)~=(i+j)/2
            N(i,j)=2;
        end
    end
end
figure(2)
clf
image(N)
colormap(cmap)
axis equal
axis off

%% 5.2
z=[1 1 1 1 1; 0 0 0 0 1; 0 0 0 1 0; 0 0 1 0 0 ; 0 1 0 0 0 ;1 0 0 0 0;1 1 1 1 1];
t=[1 1 1 1 1;0 0 1 0 0;0 0 1 0 0 ;0 0 1 0 0;0 0 1 0 0;0 0 1 0 0;0 0 1 0 0];

zt=1+z+(t*2);
cmapt=[0 0 0;0 0 0;1 .7 .7;1 .7 .7];
cmapz=[0 0 0;0 0 1; 0 0 0;0 0 1];
image(zt); axis off
colormap(cmapz) 
pause
colormap(cmapt)

%% 5.3
% a

M=1:256;
figure(1)
clf
image(M)
colormap(gray(256));

% b
cmap=zeros(256,3);
ncycles=4;
phase=pi;
for i=1:3
    cmap(:,i)=(sin(linspace(0,2*pi*ncycles,256)'-phase)+1)/2;
end
colormap(cmap);


%c 
for phase=linspace(0,8*pi,100)
    for i=1:3
        cmap(:,i)=(sin(linspace(0,2*pi*ncycles,256)'-phase)+1)/2;
    end
    colormap(cmap);
    drawnow
end

%% 5.4
 ntrials=20;
 timepts=0:.01:2;
 signal=.15*rand(ntrials, length(timepts));
 signal(2:2:end,:)=-signal(1:2:end,:);
 noise=0.8*randn(ntrials, length(timepts));
 choicethreshold=8;
 clear resp
 for n=1:ntrials
     resp(n,1)=0;
     for t=2:length(timepts)
         resp(n,t)=resp(n,t-1)+signal(n,t)+noise(n,t);
         if resp(n,t)>=choicethreshold
             resp(n,t:length(timepts))=(2*choicethreshold);
             t=length(timepts+1);
         elseif resp(n,t)<=-choicethreshold
             resp(n,t:length(timepts))=-(2*choicethreshold);
             t=length(timepts+1);
         end
     end
 end
 
 
 cmap=gray((4*choicethreshold)+1);
 cmap(1,:)=[1 0 0];
 cmap(end, :)=[0 1 0];
 colormap(cmap)
 image(timepts, 1:ntrials, resp+(2*choicethreshold)+1);
 ylabel('trial number')
 xlabel('time (secs)')
 