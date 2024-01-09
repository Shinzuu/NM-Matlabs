%clc;
syms x;
y= input('input your function: ');
a= input('input lower limit: ');
b= input('input upper limit: ');
n= input('input your sub interval: ');
%input integration limits and interval of ordinates.

fa= eval(subs(y,x,a));
fb= eval(subs(y,x,b));
in = fa + fb;
dx= (b-a)/n;

for i=1: n-1
    k = a+ (i*dx);
    fk = eval(subs(y,x,k));
    in = in + fk*2;
end
in = in * (dx/2);
disp('integration: ');
disp(in);
    