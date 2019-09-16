//Question 1//

z = -5 + 2j;

z_mag = abs(z);

z_rad = angle(z);

z_deg = z_rad*180/pi;

//Question 2//

zp = 0.8*exp(((-2*pi)/5)*j);

zp_real = real(zp);

zp_imag = imag(zp);

zp_deg = (180/pi)*angle(zp);

//Question 3//

t = 0:0.001:0.5;

f = sin(t*15*pi + pi/4);

g = t.*f;

//Question 4//

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

//Question 5//
t = 0:0.01:0.99;
k = [0; 1; 2; 3; 4];
P = exp(j*2*pi*k*t);
p = transpose(P);

p_real = real(p);

p_imag = imag(p);

prk0 = p_real(:,1);
prk1 = p_real(:,2);
prk2 = p_real(:,3);
prk3 = p_real(:,4);
prk4 = p_real(:,5);

pik0 = p_imag(:,1);
pik1 = p_imag(:,2);
pik2 = p_imag(:,3);
pik3 = p_imag(:,4);
pik4 = p_imag(:,5);



figure(1);
hold on
ylim([-1.05 1.05]);
plot(t, prk0, 'marker', '.');
plot(t, prk1, 'marker', 'diamond', 'linestyle', '--');
plot(t, prk2, 'marker', 'o', 'linestyle', ':');
plot(t, prk3, 'marker', '*', 'linestyle', '-.');
plot(t, prk4, 'marker', 'square');
grid;
legend('k=0', 'k=1', 'k=2','k=3', 'k=4');
title('Real Phi values vs time');
xlabel('t');
ylabel('Phi real');
hold off

figure(2);
hold on
ylim([-1.05 1.05]);
plot(t, pik0, 'marker', '.');
plot(t, pik1, 'marker', 'diamond', 'linestyle', '--');
plot(t, pik2, 'marker', 'o', 'linestyle', ':');
plot(t, pik3, 'marker', '*', 'linestyle', '-.');
plot(t, pik4, 'marker', 'square');
grid;
legend('k=0', 'k=1', 'k=2','k=3', 'k=4');
title('Imaginary Phi values vs time');
xlabel('t');
ylabel('Phi imaginary');
hold off

figure(3)
hold on
plot3(t, prk0, pik0, 'marker', '.');
plot3(t, prk1, pik1, 'marker', '.', 'linestyle', '--');
plot3(t, prk2, pik2, 'marker', '.', 'linestyle', ':');
plot3(t, prk3, pik3, 'marker', '.', 'linestyle', '-.');
plot3(t, prk4, pik4, 'marker', '.');
grid;
xlabel('t');
ylabel('Phi Real');
zlabel('Phi Imaginary');
title('Phi vs t');
legend('k=0', 'k=1', 'k=2','k=3', 'k=4');
hold off;
