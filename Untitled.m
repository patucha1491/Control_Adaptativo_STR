
syms tethaini d w v x y tetha xini yini 
A =[0 0 -v*sin(tethaini)-(d*w*cos(tethaini));
   0 0  v*cos(tethaini)-(d*w*sin(tethaini));
   0 0  0 ]; 
es =[x;
    y;
    tetha];
result= A*es;
xp=result(1);
yp=result(2);
tethap=result(3);

d=1;
 
F=[ 0, 0, -((x^2 + y^2)^(1/2)*((x*(v*sin(tetha) + d*w*cos(tetha)))/(x^2 + y^2)^(1/2) - (y*(v*cos(tetha) - d*w*sin(tetha)))/(x^2 + y^2)^(1/2)))/(x*cos(tetha) + y*sin(tetha));
    0, 0,                                                                                                                                                                  0];
k=[xini; yini; tethaini];
Fk=F*k;

G =[ (x^2 + y^2)^(1/2)/(x*cos(tetha) + y*sin(tetha)), -(d*(y*cos(tetha) - x*sin(tetha)))/(x*cos(tetha) + y*sin(tetha));
                                                0,                                                                1];
k=[v;w];
Gk=G*k;