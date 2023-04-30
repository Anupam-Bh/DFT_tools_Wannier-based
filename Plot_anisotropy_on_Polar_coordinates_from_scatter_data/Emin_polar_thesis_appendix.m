%% 3D grid of alpha and theta for ground state  
clc
clear all
close all
%
o=[0 0 0]';u=[1 0 0]';v=[0 1 0]';w=[0 0 1]';
mArrow3(o,u,'color', 'green', 'stemWidth', 0.008);
mArrow3(o,v,'color', 'blue', 'stemWidth', 0.008);
mArrow3(o,w,'color', 'red', 'stemWidth', 0.008);
hold on
%
R=1;
th=0:pi/12:2*pi;
phi=-pi/2:pi/12:pi/2;
[T,P]=meshgrid(th,phi);
[x,y,z]=sph2cart(T,P,R);
plot3(x,y,z,'ok','MarkerSize',2);
hold on
%
R=1;
th1=0:pi/12:2*pi/3;
phi1=0:pi/12:pi/2;
[T1,P1]=meshgrid(th1,phi1);
[x1,y1,z1]=sph2cart(T1,P1,R);

%
aa=[-57.12016261
-57.12016039
-57.12016199
-57.12016059
-57.12015954
-57.12016313
-57.12016196
-57.12016257
-57.12015954
-57.12010339
-57.12010445
-57.12010655
-57.1201066
-57.12010884
-57.1201066
-57.12010574
-57.1201045
-57.1201033
-57.11995721
-57.11995626
-57.11995737
-57.11995802
-57.11996133
-57.11995886
-57.11995657
-57.11995521
-57.11995725
-57.11975658
-57.11975562
-57.11975485
-57.11975588
-57.11975694
-57.11975587
-57.11975484
-57.11975384
-57.11975526
-57.11955484
-57.11955364
-57.11955365
-57.11955563
-57.11955714
-57.11955552
-57.11955367
-57.11955415
-57.11955802
-57.11940947
-57.11940715
-57.1194066
-57.11940623
-57.11940996
-57.11940809
-57.11940627
-57.11940816
-57.11941002
-57.1193521
-57.1193521
-57.1193521
-57.1193521
-57.1193521
-57.1193521
-57.1193521
-57.1193521
-57.1193521];
ax=reshape(x1',[],1);ay=reshape(y1',[],1);az=reshape(z1',[],1);
scatter3(ax,ay,az,65,aa,'filled');
pbaspect([1 1 1])
hold on
%
view(154,18)


