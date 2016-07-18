x0=2.5;
epsilon=0.001;
delta=0.001;
n=5;
for (i=1:n)
    f0=(x0*sin(x0))+cos(x0);
    fd0=x0*cos(x0);
    
    x1=x0-(f0/fd0);
    if((x1-x0)/x1)<epsilon
        x1
        fx=(x1*x1)-25;
        fx
        i
    end
    x0=x1;
end
