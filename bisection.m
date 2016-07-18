x0=2;   x1=7;
d=25;
e=0.001;
y0=(x0*x0)-d;
y1=(x1*x1)-d;
i=0;
j=1;
k=1;
x5=x1;
   if(y0<0 && y1<0 || y0>0 && y1>0)
    starting value unsuitable
    x0
    x1
    yo
    y1
end
      printf('iter    x0         x1         x2           f(x0)          f(x1)         f(x2)       error\n');     
while ((x1-x0)/x1)>e 
    y0=(x0*x0)-d;
    y1=(x1*x1)-d;
    x2=(x0+x1)/2;
    y2=(x2*x2)-d;
   error=x5-x2;
        i=i+1;
    printf('%d    %f   %f   %f     %f     %f      %f        %f \n',i,x0,x1,x2,y0,y1,y2,error);  
    if(y0<0 && y2<0 || y0>0 && y2>0)
       x0=x2;
       x5=x0;       
    else
       x1=x2;
       x5=x1;       
    end    
    x3(j)=x2;
    j=j+1;
    x4(k)=error;
    k=k+1;
end
root=x2 
plot(x3,'r',x4,'g')
xlabel('iteration')
ylabel('roots')
legend('root','error')




    