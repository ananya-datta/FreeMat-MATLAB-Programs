x0=2;
x1=8;
e=0.001;
n=10;
f0=(x0*x0*x0)-(2*x0)-5;
f1=(x1*x1*x1)-(2*x1)-5;
j=1;
k=1;
x5=x1;
printf('iter   x0         x1         x2           f(x0)          f(x1)         f(x2)            error        \n'); 
 
 for (i=1:n)
    x2=((x0*f1)-(x1*f0))/(f1-f0);
    f2=(x2*x2*x2)-(2*x2)-5;
    error=x5-x2;
       printf('%d    %f   %f   %f     %f     %f      %f       %f  \n',i,x0,x1,x2,f0,f1,f2,error);     
  if(abs(f2)<e)     
     break;
  end
 if(f2<0 && f0>0 || f2>0 && f0<0)
        x1=x2;
        f1=f2;
        x5=x1;
    else
        x0=x2;
        f0=f2;
        x5=x0;
    end
     x3(j)=x2;
    j=j+1;
    x4(k)=error;
    k=k+1;
end
Root=x2
plot(x4,'r',x3,'g')
