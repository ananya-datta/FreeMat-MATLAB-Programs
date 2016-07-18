x0=2.5;
e=0.0001;
n=10;
x1=((x0*x0*x0)-5)/(2*x0);
printf('iter       root \n');
for(i=1:n)
    x0=x1;
   x1=((x0*x0*x0)-5)/(2*x0);
    if(abs((x1-x0)/x1)<=e)
        break;
    end
    printf('%d  =    %f \n',i,x1);
end
root=x1