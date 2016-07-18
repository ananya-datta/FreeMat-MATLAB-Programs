for(i=1:6)
    x=[1 2 3 4 5 6];
    f=[33 16 35 25 35 26];
end
t=3.7;
for(i=2:6)
if(t<=x(i))
    break;
    end
end
i=i-1;
fx=(f(i+1)*(t-x(i))-f(i)*(t-x(i+1)))/(x(i+1)-x(i));
x=t
fx=fx