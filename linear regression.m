n=7;
sumxsq=0;
sumysq=0;
sumx=0;
sumy=0;
sumxy=0;
printf('x    y     xsq     xy\n');
printf('----------------------------\n');
for(i=1:n)
    x=[1 2 4 5 6 8 9];
    y=[2 5 7 10 12 15 19];
    xsq=(x(i)*x(i));
    xy=x(i)*y(i);
   
    printf('%d     %d     %d      %d\n',x(i),y(i),xsq,xy);
    
    sumx=sumx+x(i);
    sumxsq=sumxsq+xsq;
    sumy=sumy+y(i);
    sumxy=sumxy+xy;
    sumysq=sumysq+(y(i)*y(i));
end 



printf('\n  sumx=%d\n  sumy=%d\n  xsq=%d\n  xy=%d\n',sumx,sumy,sumxsq,sumxy);
    
    denom=n*sumxsq-sumx*sumx;
    a0=(sumy*sumxsq-sumx*sumxy)/denom;
    a1=(n*sumxy-sumx*sumy)/denom;
    
    
    printf('\n a0=%f\n',a0);
    printf('\n a1=%f\n',a1);
    printf('\n y=%fx + %f\n',a1,a0);
    
  
    denomb=n*sumysq-sumy*sumy;
    b0=(sumx*sumysq-sumy*sumxy)/denomb;
    b1=(n*sumxy-sumx*sumy)/denomb;
    
    printf('\n b0=%f\n',b0);
    printf('\n b1=%f\n',b1);
    printf('\n x=%fx + %f\n',b1,b0);
    
    
    
    