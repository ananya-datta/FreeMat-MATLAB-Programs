x0=7;
epsilon=0.0001;
delta=0.00001;
n=5;
printf('iter      x0          x1          f(x0)         fd(x0)       ((x1-x0)/x1) \n'); 
for (i=1:n)
    f0=(x0*x0)-25;
    fd0=x0*2;    
    if(abs(fd0)<=delta)
        break;
      printf('  slope is too small');        
    end
    
    x1=x0-(f0/fd0);
    fx=(abs((x1-x0)/x1));
     printf('%d       %f    %f     %f     %f     %f   \n',i,x0,x1,f0,fd0,fx);  
     
     
if(abs((x1-x0)/x1))<epsilon
    break;
       
    end  
      x0=x1;
end
root=x1