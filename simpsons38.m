x(1)=0
f(1)=1
h=1/6;
n=1;
j=1;
e=0.001;
 for(i=2:10)
    x(i)=x(i-1)+h;
    f(i)=1/(1+(x(i)*x(i)));
    j=j+1;
    if(abs(n-x(i))<=e)
        break;
    end
  end
  s1=0;
  s2=0;
  s3=0;
        s1=(f(1)+f(j));
         for(i=2:j-1)
         if(mod(i-1,3)~=0)
         s2=s2+3*f(i);
         else
         s3=s3+2*f(i);
     end
     end
        
simpson=((3*h)/8)*(s1+s2+s3)