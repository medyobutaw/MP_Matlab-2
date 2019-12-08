x1 = input('Enter the first point in the x-axis: ');
y1 = input('Enter the first point in the y-axis: ');
x2 = input('Enter the second point in the x-axis: ');
y2 = input('Enter the second point in the y-axis: ');
x3 = input('Enter the third point in the x-axis: ');
y3 = input('Enter the third point in the y-axis: ');


c = [x1,y1,1;x2,y2,1;x3,y3,1];
C = det(c);


d = [(x1)^2+(y1)^2,y1,1;(x2)^2+(y2)^2,y2,1;(x3)^2+(y3)^2,y3,1];
D = -det(d);


e = [(x1)^2+(y1)^2,x1,1;(x2)^2+(y2)^2,x2,1;(x3)^2+(y3)^2,x3,1];
E = det(e);


f = [(x1)^2+(y1)^2,x1,y1;(x2)^2+(y2)^2,x2,y2;(x3)^2+(y3)^2,x3,y3];
F = -det(f);

h = -(D/(C*2));
k = -(E/(C*2));
r = sqrt((x1-h)^2+(y1-k)^2);

Dc = D/C;
Ec = E/C;
Fc = F/C;

fprintf('Center(h,k) = %.2f, %.2f \n',h,k)
fprintf('Radius(r) = %.2f\n',r)
fprintf('Vector[D,E,F] = [%.0f, %.0f, %.0f]\n',Dc,Ec,Fc)
