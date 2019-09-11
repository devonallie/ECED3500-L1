z = -5 + 2j;

z_mag = abs(z);

z_rad = angle(z);

z_deg = z_rad*180/pi;


zp = 0.8*exp(((-2*pi)/5)*j);

zp_real = real(zp);

zp_imag = imag(zp);

zp_deg = (180/pi)*angle(zp);

t = 0:0.001:0.5;

f = sin(t*15*pi + pi/4);

g = t.*f;

A = [2   sqrt(5)  -1;
     3     -2   -sqrt(3)
     7     4       6    ];
 
 y = [3;
      2;
     -1];
x = inv(A)*y;

C = A;

C(;,2) = y(:);

x1 = det([y,a(:,2:3)])/det(a);
x2 = det(c)/det(a);
x3 = det([y,a(:,1:2)])/det(a);



