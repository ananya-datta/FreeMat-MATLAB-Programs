n=3;
a=[3 2 3 18;2 1 1 10;1 4 9 16]
for(i=2:n)
    u=a(i,1)/a(1,1);
    for(j=1:(n+1))
        a(i,j)=a(i,j)-(u*a(1,j));
    end
end
a=a


i=n;
u=a(i,n-1)/a(n-1,n-1);
for(j=2:(n+1))
    a(i,j)=a(i,j)-(u*a(n-1,j));
end
a=a


x(n)=a(n,n+1)/a(n,n);
   for(i=1:(n-1))
         sum=0;
   for(j=(i+1):n)
       sum=sum+(a(i,j)*x(j));
   end
     x(i)=(a(i,n+1)-sum)/a(i,i);
  end
   printf(' x=%f \t y=%f \t z=%f\n',x(1),x(2),x(3));
    