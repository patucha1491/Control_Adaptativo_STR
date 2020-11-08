clear all
clc

syms tetha d w v x y xl yl tethal
A=[0 0 -v*sin(tetha)-(d*w*cos(tetha));
   0 0  v*cos(tetha)-(d*w*sin(tetha));
   0 0  0 ]; 
B=[cos(tetha) -d*sin(tetha);
   sin(tetha)  d*cos(tetha);
   0           1];
C=[(x)/(((x^2)+(y^2))^(1/2)) (y)/(((x^2)+(y^2))^(1/2)) 0;
    0 0 1 ];
D=[0];

disp('--------------Desacople 1----------------');
des1= ( (C(1,(1:3)))*1*B);
des11=simplify(des1);


disp('--------------Desacople 2----------------');
des2= ( (C(2,(1:3)))*1*B);
des22=simplify(des2);

disp('resultado para desacople 1 v1=1');
disp('resultado para desacople 2 v2=1');

Bb=[des11;
    des22];
Cc=[C(1,(1:3))*A;
    C(2,(1:3))*A];

Gg=inv(Bb);
Ff=((inv(Bb))*Cc);


MMM=[1 1 1:1 1 1: 1 1 1];

NNN=[1 1: 1 1 : 1 1];
PPPP=MMM+NNN;
