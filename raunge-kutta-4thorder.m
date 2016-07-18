x1=0;
y1=1;
h=0.05;
xf=0.25;
printf('x   y\n');
    while(x1<=xf)
    s1=-(x1*y1);
    x2=x1+(0.5*h);
    y2=y1+(0.5*h*s1);
    s2=-(x2*y2);
    y2=y1+(0.5*h*s2);
    s3=-(x2*y2);
    x2=x1+h;
    y2=y1+(s3*h);
    s4=-(x2*y2);
    s=(s1+(2*s2)+(2*s3)+s4);
    y2=y1+((h*s)/6);    
    printf('%f %f\n',x1,y1);
    x1=x2;
    y1=y2;
    
end
