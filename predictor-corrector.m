x1=0;
y1=1;
h=0.05;
xf=0.25;
printf('x   y\n');
    s1=-(x1*y1);
    x2=x1+h;
    y2=y1+(h*s1);
    s2=-(x2*y2);
    y2=y1+(h*(s1+s2)/2);
    printf('%f %f\n',x1,y1);
    
while(x2<=xf) 
    printf('%f %f\n',x2,y2);
    s2=-(x2*y2);
    y3p=y1+(2*h*s2);
    x3=x2+h;
    s3=-(x3*y3p);
    y3c=y2+(h*(s2+s3)/2);
    
   
    y1=y2;
    y2=y3c;
    x2=x3;
end