function y0 = Lagrange_interp_1014(x,y,x0)
%clc;

x=input('Enter x values:'); %the vector of abscissas.
y=input('Enter y values:'); %the matching vector of ordinates.
x0=input('Enter New x:');   %the target to be interpolated
y0=0;                       %the solution from the Langrange interpolation 

n=length(x);
    for j=1:n
        t=1;
       for i=1:n
           if i~=j
               t=t*(x0-x(i))/(x(j)-x(i));
           end
       end
       y0=y0+t*y(j);
    end
end
