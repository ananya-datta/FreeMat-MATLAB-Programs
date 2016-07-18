x0=2;
x1=6;
e=0.0001;
delta=0.0001;
n=5;
f0=x0*x0-25;
f1=x1*x1-25;
printf('iter   x0         x1         x2           f(x0)          f(x1)         f(x2)          \n');  
for (i=1:n)  
    if(abs(f1-f0)<delta)
        break;
        printf('slope is too small');
    end
        
         x2=((x0*f1)-(x1*f0))/(f1-f0);
         f2=x2*x2-25;
        printf('%d    %f   %f   %f     %f     %f      %f      \n',i,x0,x1,x2,f0,f1,f2);
          
 if(abs(f2)<e) 
    break; 
 end
        x0=x1;
        x1=x2;
       f0=f1;
      f1=f2; 
end
root=x2